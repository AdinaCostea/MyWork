import java.util.Scanner;
public class Main_key {
public static Scanner scan=new Scanner(System.in);
	public static void main(String[] args) {
	System.out.println("Introduceti o cheie de autentificare de forma XXXXX-XXXXX-XXXXX-XXXXX:");
	String key=scan.nextLine();
    Key ob=new Key();
   ob.verificare_cheie(key);
   ob.verificare_nr(key);
   System.out.println("Cheia de autentificare este corecta!");
	}
	
}
