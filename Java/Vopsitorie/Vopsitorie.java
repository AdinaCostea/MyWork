//main
import java.util.Scanner;
public class Vopsitorie implements Vopsea {
	public static Scanner scan=new Scanner(System.in);
	public static void main(String[] args) {
		Sfera sfera=new Sfera();
		Cub cub=new Cub();
		Cilindru cilindru=new Cilindru();
		System.out.println("Introduceti raza sferei:");
		int raza=scan.nextInt();
		sfera.set_raza(raza);
		System.out.println("Introduceti latura cubului:");
		int latura=scan.nextInt();
		  cub.set_latura(latura);
		System.out.println("Introduceti latura bazei cilindrului:");
		int raza_cilindru=scan.nextInt();
		cilindru.set_raza_b(raza);
		System.out.println("Introduceti inaltimea cilindrului:");
		int inaltimea=scan.nextInt();
		cilindru.set_inaltimea(inaltimea);
		float vopseaPeUnitateaDeSuprafata = 20;// ml pe m^2
		System.out.println(sfera.toString()+" : "+(vopseaPeUnitateaDeSuprafata*sfera.aria())+" ml de vopsea pe m^2");
		System.out.println(cub.toString()+" : "+(vopseaPeUnitateaDeSuprafata*cub.aria())+" ml de vopsea pe m^2");
		System.out.println(cilindru.toString()+" : "+(vopseaPeUnitateaDeSuprafata*cilindru.aria())+" ml de vopsea pe m^2");
	}
}
