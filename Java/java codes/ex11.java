/** Implementați jocul X-0 naiv ca și joc automat. Programul va selecta aleator la fiecare pas o poziție pe care o va 
completa fie cu X, fie cu 0 în mod alternativ. Poziția selectată nu poate fi una completată deja. Jocul se termină 
atunci când nu mai există casuțe libere sau când unul dintre jucători a obținut o linie, coloană sau diagonală 
completă. Afișați pe ecran fiecare pas al algoritmului sub forma unei matrici, caracterul * va reprezenta o casuță 
necompletată.**/
import java.util.Random;
import java.lang.String;
public class ex11 {

	public static void main(String[] args) {
		String jucator_curent=new String();
		String tabla[][]=new String[3][3];
		System.out.println("Tabla de joc arata astfel:");
		tabla_joc(tabla);
		afisare_tabla(tabla);
		System.out.println("Jocul a inceput!");
		int nr_mutari=9;
		while(nr_mutari!=0) {
			incepe_jocul(tabla,jucator_curent);
			
			
		   nr_mutari--;
		}
        
			
        
        
	}
	static String[][] tabla_joc(String tabla[][]) {
		for(int i=0;i<tabla.length;i++)
			for(int j=0;j<tabla[i].length;j++)
			tabla[i][j]="*";
			  
			  return tabla;
	}
	static void afisare_tabla(String tabla[][]) {
		System.out.println("---");
		for(int i=0;i<tabla.length;i++)
		{	for(int j=0;j<tabla[i].length;j++)
			{ 
			  System.out.print(tabla[i][j]+" ");
			  
		  }
		System.out.println("");
		}
		
	}
	static void incepe_jocul(String tabla[][],String jucator_curent) {
		Random ok=new Random();
		
		int nr_mutari=1;
		while(nr_mutari<=9) {
			int i=ok.nextInt(3);
			int j=ok.nextInt(3);
			if(tabla[i][j].equals("*")) {
				if(nr_mutari%2==1) {
					jucator_curent="X";
					tabla[i][j]=jucator_curent;
					System.out.println("Jucatorul "+jucator_curent+" a mutat pe pozitia "+i+" "+j);
					if(castigator(tabla,jucator_curent)!=0) {
						afisare_tabla(tabla);
						System.out.println("Jucatorul "+jucator_curent+" a castigat!");
						System.out.println("Jocul s-a incheiat!");
						System.exit(1);
					}
					if(remiza(tabla,jucator_curent)!=0 && nr_mutari==0) {
						afisare_tabla(tabla);
						System.out.println("Remiza!");
						System.out.println("Jocul s-a incheiat!");
						System.exit(1);
					}
				}
				else {
					jucator_curent="O";
					tabla[i][j]=jucator_curent;
					System.out.println("Jucatorul "+jucator_curent+" a mutat pe pozitia "+i+" "+j);
					if(castigator(tabla,jucator_curent)!=0) {
						afisare_tabla(tabla);
						System.out.println("Jucatorul "+jucator_curent+" a castigat!");
						System.out.println("Jocul s-a incheiat!");
						System.exit(1);
					}
					if(remiza(tabla,jucator_curent)!=0 && nr_mutari==0) {
						afisare_tabla(tabla);
						System.out.println("Remiza!");
						System.out.println("Jocul s-a incheiat!");
						System.exit(1);
					}
				}
				nr_mutari++;
			}
		}
		
		
	}
 static int castigator(String tabla[][],String jucator_curent) {
		int win=0;
		//verificare linii
		for(int i=0 ;i<tabla.length;i++)
			if(tabla[i][0]==jucator_curent && tabla[i][1]==jucator_curent && tabla[i][2]==jucator_curent) win=1;
		//verificare coloane
		for(int j=0;j<tabla.length;j++)
			if(tabla[0][j]==jucator_curent && tabla[1][j]==jucator_curent && tabla[2][j]==jucator_curent) win=1;
		//verificare diagonala  principala
		if(tabla[0][0]==jucator_curent && tabla[1][1]==jucator_curent && tabla[2][2]==jucator_curent) win=1;
		//verificare diagonala secundara
		if(tabla[0][2]==jucator_curent && tabla[1][1]==jucator_curent && tabla[2][0]==jucator_curent) win=1;
		
		return win;
	
	
}
static int remiza(String tabla[][],String jucator_curent) {
	int draw=0;
	//verificare linii
			for(int i=0 ;i<tabla.length;i++)
				if(tabla[i][0]!=jucator_curent && tabla[i][1]!=jucator_curent && tabla[i][2]!=jucator_curent) draw=1;
			//verificare coloane
			for(int j=0;j<tabla.length;j++)
				if(tabla[0][j]!=jucator_curent && tabla[1][j]!=jucator_curent && tabla[2][j]!=jucator_curent) draw=1;
			//verificare diagonala  principala
			if(tabla[0][0]!=jucator_curent && tabla[1][1]!=jucator_curent && tabla[2][2]!=jucator_curent) draw=1;
			//verificare diagonala secundara
			if(tabla[0][2]!=jucator_curent && tabla[1][1]!=jucator_curent && tabla[2][0]!=jucator_curent) draw=1;
			return draw;
}
 
}
