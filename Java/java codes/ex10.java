/** Fie un algoritm de criptare în cadrul căruia se ia un text de intrare ‘A’ format din litere mici și mari. Separat se 
definește un șir de caractere ”B” cărora li se asociază aleator câte un număr întreg de la 1 la 100. Algoritmul 
verifică dacă literele din șirul B există în șirul A și face suma numerelor asociate acestora. La suma finală se 
adaugă pozițiile din șirul A la care au fost găsite caracterele din șirul B. Dacă suma finală este mai mare de 100, 
criptarea a fost validă. Afișați un mesaj corespunzător.**/
import java.io.IOException;
import java.io.*;
import java.lang.String;
import java.util.Random;
public class ex10 {
    
	public static void main(String[] args) {
		BufferedReader dis= new BufferedReader(new InputStreamReader(System.in));
		System.out.println("Introduceti un sir de caractere format din liere mici si mari(sirul A):");
        String A=null;
        String B=null;
        try {
        	A= dis.readLine();;
        }catch(IOException ioe){
        	System.out.println(ioe.toString());
           System.exit(1);
        }
        System.out.println("Introduceti un sir de caractere (sirul B):");               
        try {
        	B= dis.readLine();;
        }catch(IOException ioe){
        	System.out.println(ioe.toString());
           System.exit(1);
        }
     int criptare=validare_criptare(A,B);
	if(criptare>100)System.out.println("Criptarea a fost validata");
	else System.out.println("Criptarea nu a avut loc");
	}
	 
  static int validare_criptare(String a,String b) {
	  int criptare=0;
	  String str=a.toLowerCase();
	  //conversie de la string la char(sirul A)
	  char a_tab[]=new char[a.length()];
	  for(int i=0;i<a.length();i++)
      	a_tab[i]=str.charAt(i);
	//conversie de la string la char(sirul A)
	  char b_tab[]=new char[b.length()];
	   for(int i=0;i<b.length();i++)
           b_tab[i]=b.charAt(i);
	   //atribuire valori pt fiecare caracter din sirul B
	  Random ok=new Random();
	  int tab[]=new int [b.length()];
	  for(int i=0;i<b.length();i++)
	   tab[i]=ok.nextInt(100);
	 //verificare criptare
	  for(int i=0;i<a.length();i++)
	  for(int j=0;j<b.length();j++) {
		  if(a_tab[i]==b_tab[j]) criptare=criptare+tab[j];
	  }

	  return criptare;
	  
  }
}
