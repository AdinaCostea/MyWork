import java.util.Scanner;
public class Main_cerc {
 static public Scanner scan=new Scanner(System.in);
	public static void main(String[] args) {
		System.out.println("Introduceti numarul de obiecte dorite:");
		  int n=scan.nextInt();
		  scan.nextLine();
		  Cerc ob[]= new Cerc[n];
		  System.out.println("Introduceti atributele obiectelor");
		  for(int i=0;i<n;i++) {
			  ob[i] = new Cerc();
			  System.out.println("Culoare:");
			  int culoare=scan.nextInt();
			  ob[i].set_culoare(culoare);
			  System.out.println("Raza:");
			  float raza=scan.nextFloat();
			  ob[i].set_raza(raza);
			  System.out.println("Coordonata x:");
			  int x=scan.nextInt();
			  ob[i].set_pozitie1(x);
			  System.out.println("Coordonata y:");
			  int y=scan.nextInt();
			  ob[i].set_pozitie2(y);
			  scan.nextLine();
		  }
		
		  for(int i=0;i<n;i++) {
			  ob[i].centru_cerc(ob[i]);
			  ob[i].cadran_cerc(ob[i]);
			  ob[i].centru_pe_axe(ob[i]);
		  }
		  System.out.println("Cantitate de culoare:");
		  int a=scan.nextInt();
		  int b=scan.nextInt();
		  for(int i=0;i<n;i++) {
			  ob[i].culori(ob[i], a, b);
		  }
		  
	}

}
