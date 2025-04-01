import java.util.Scanner;
import java.util.StringTokenizer;

public class Main_student {
public static Scanner scan=new Scanner(System.in);
	public static void main(String[] args) {
	System.out.println("Introduceti numarul de studenti:");
	int n=scan.nextInt();
	scan.nextLine();
	Student ob[]=new Student[n];
	System.out.println("Intoduceti datele studentilor în formatul nume^^^nr_tel^^^media:");
	for(int i=0;i<n;i++) {
	 ob[i]=new Student();
	 String date=scan.nextLine();
	 StringTokenizer token=new StringTokenizer(date,"^^^");
	 while(token.hasMoreElements()) {
		 String nume=(String)token.nextToken();
		 ob[i].set_nume(nume);
		 String nr_tel=(String)token.nextToken();
		 ob[i].set_nr_tel(nr_tel);
		 String media=(String)token.nextToken();
		 ob[i].set_media(media);
		 ob[i].verificare_nr_tel(nr_tel);
		 }
	}
	System.out.println("Datele studentilor sunt:");
	for(int i=0;i<n;i++) {
		System.out.println("Student "+(i+1));
		ob[i].afisare(ob[i]);
	}
    System.out.println("Sortare dupa nume:");
    Student ob1=new Student();
    ob1.sortare_nume(ob, n);
    System.out.println("Sortare dupa medie:");
    ob1.sortare_medie(ob, n);
	}

}
