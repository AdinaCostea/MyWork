/**Să se definească o clasa numita Student cu atributele private nume, nr. tel si media (constructori, metode setter
și getter). În metoda main (inclusă într-o altă clasă) se crează un tablou unidimensional de obiecte de tip 
Student, cu lungimea specificată de catre utilizator. Citirea datelor fiecărui student se face în formatul 
nume^^^nr_tel^^^media. Dacă informația specifică numarului de tel. nu este validă (10 caractere numerice, cu 
sau fară caractere speciale de tip spațiu, - sau .), se cere reintroducerea întregului șir de caractere. Să se 
ordoneze și să se afișeze studenții după nume și după medie.**/
import java.util.Scanner;
import java.util.Arrays;
public class Student {
private String nume=new String();
private String nr_tel;
private String media;
public static Scanner scan=new Scanner(System.in);
//constructori
public Student() {
	super();
}
public Student(String nume,String nr_tel,String media) {
	this.nume=nume;
	this.nr_tel=nr_tel;
	this.media=media;
	
}
//setteri
public void set_nume(String nume) {
	this.nume=nume;}
public void set_nr_tel(String nr_tel) {
	this.nr_tel=nr_tel;
}
public void set_media(String media) {
	this.media=media;
}
//getteri
public String get_nume() {
	return nume;
}
public String get_nr_tel() {
	return nr_tel;
}
public String get_media() {
	return media;
}
//verificare nr telefon
public void verificare_nr_tel(String str) {
	int cnt=0;
	if(get_nr_tel().length()!=10) {
		for(int i=0;i<get_nr_tel().length();i++) {
			if(str.charAt(i)=='-' || str.charAt(i)=='.') {
				cnt++;
			}
		}
		if(get_nr_tel().length()-cnt!=10) {
			System.out.println("Numar de telefon invalid!Reintroduceti numarul de telefon:");
			String nr2=scan.nextLine();
			set_nr_tel(nr2);
		}
		
	}
	else ;
	for(int i=0;i<get_nr_tel().length();i++) {
		if(Character.isLetter(str.charAt(i))) {
			System.out.println("Numar de telefon invalid!Reintroduceti numarul de telefon:");
			String nr2=scan.nextLine();
			set_nr_tel(nr2);
		}
		else break;
	}
}
//sortare dupa nume
public void sortare_nume(Student obj[],int n) {
	Arrays.sort(obj, 0, n, (a, b) -> a.get_nume().compareTo(b.get_nume()));
	 for (int i = 0; i < n; i++) {
		 obj[i].afisare(obj[i]);
	 }
	
}
//afisare
public void afisare(Student ok) {
	System.out.println("Nume:"+get_nume());
	System.out.println("Numar de telefon:"+get_nr_tel());
	System.out.println("Media:"+get_media());
	
}
//sortare dupa medie
public void sortare_medie(Student obj[],int n) {
	float tab[]=new float[n];
	for(int i=0;i<n;i++) {
		tab[i]=Float.parseFloat(obj[i].get_media());
	}
	
	Arrays.sort(obj, (a, b) -> Float.compare(Float.parseFloat(a.get_media()), Float.parseFloat(b.get_media())));
	for (int i =n-1; i>=0; i--) {
        obj[i].afisare(obj[i]);
    }
   
}
}
