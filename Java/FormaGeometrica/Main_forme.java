import java.util.Scanner;
public class Main_forme {
	public static Scanner scan=new Scanner(System.in);
	public static void main(String[] args) {
		//patrat
		System.out.println("Introduceti numarul de patrate:");
		int np=scan.nextInt();
		Patrat p[]=new Patrat[np];
		double aria_p=0;
		double per_p=0;
		for(int i=0;i<np;i++) {
			p[i]=new Patrat();
			System.out.println("Latura paratului "+(i+1)+" :");
			int latura=scan.nextInt();
			System.out.println("Aria:"+p[i].Aria(latura));
			System.out.println("Perimetru:"+p[i].Perimetru(latura));
			aria_p=aria_p+p[i].Aria(latura);
			per_p=per_p+p[i].Perimetru(latura);
		}
		//triunghi
		System.out.println("Introduceti numarul de triunghiuri:");
		int nt=scan.nextInt();
		TriunghiEchilateral t[]=new TriunghiEchilateral[nt];
		double aria_t=0;
		double per_t=0;
		for(int i=0;i<nt;i++) {
			t[i]=new TriunghiEchilateral();
			System.out.println("Latura triunghiului "+(i+1)+" :");
			int latura=scan.nextInt();
			System.out.println("Aria:"+t[i].Aria(latura));
			System.out.println("Perimetru:"+t[i].Perimetru(latura));
			aria_t=aria_t+t[i].Aria(latura);
			per_t=per_t+t[i].Perimetru(latura);
		}
		//hexagon
		System.out.println("Introduceti numarul de forme geometrice sub forma de hexagon:");
		int nh=scan.nextInt();
		HexagonRegulat h[]=new HexagonRegulat[nh];
		double aria_h=0;
		double per_h=0;
		for(int i=0;i<nh;i++) {
			h[i]=new HexagonRegulat();
			System.out.println("Latura hexagonului "+(i+1)+" :");
			int latura=scan.nextInt();
			System.out.println("Aria:"+h[i].Aria(latura));
			System.out.println("Perimetru:"+h[i].Perimetru(latura));
			aria_h=aria_h+h[i].Aria(latura);
			per_h=per_h+h[i].Perimetru(latura);
		}
		//arie totala
		System.out.println("Aria totala ocupata de formele geometrice este:"+(aria_t+aria_h+aria_p));
		System.out.println("Perimetrul total ocupat de formele geometrice este:"+(per_t+per_h+per_p));
	}

}
