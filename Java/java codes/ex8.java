/**Sa se citeasca de la tastatura elementele unei matrice de valori intregi cu m linii (m preluat din linia de 
comanda). Pentru fiecare linie numarul de elemente va creste cu 1 fata de linia precedenta, prima linie avand 
doar un element. 
Sa se implementeze metodele care:
− afiseaza matricea linie cu linie, apoi coloana cu coloana; 
− elimina din matrice (egalizeaza cu 0) valorile care nu sunt cuprinse intre doua limite specificate
− afiseaza vecinii existenti ai unui element a carui indecsi sunt trimisi ca parametri
**/
import java.util.Scanner;
public class ex8 {
     static Scanner ok=new Scanner(System.in);
	public static void main(String[] args) {
	int n=Integer.parseInt(args[0]);
	int matrice[][]=new int[n][];
	System.out.println("Numarul de linii este:"+Integer.parseInt(args[0]));
	System.out.println("Introduceti elementele matricei:");
		int element=0;
		for(int i=0;i<matrice.length;i++){
			element++;
			matrice[i]=new int[element];;
			for(int j=0;j<matrice[i].length;j++){	
				System.out.println("Elementul["+i+"]["+j+"]=");
		        matrice[i][j]=ok.nextInt();
		     
		   }
		}//end for
		System.out.println("Afisare linie cu linie");
		afisare_linie_cu_linie(matrice);
		System.out.println("Afisare coloana cu coloana");
		afisare_coloana_cu_coloana(matrice,n);
		//index
		System.out.println("Introduceti indecsi:");
		System.out.println("Index pentru i:");
		int i_index=ok.nextInt();
		System.out.println("Index pentru j:");
		int j_index=ok.nextInt();
		for(int i=0;i<matrice.length;i++)
			for(int j=0;j<matrice[i].length;j++)
				if(i==i_index && j==j_index) 
				System.out.println("Elementul cautat este "+matrice[i][j]);
         index(matrice,i_index,j_index);
		//limite		
		System.out.println("Introduceti prima limita:");
		int limita1=ok.nextInt();
		System.out.println("Inroduceti a doua limita");
		int limita2=ok.nextInt();
		
		limitare(matrice,limita1,limita2);
		for(int i=0;i<matrice.length;i++){
			for(int j=0;j<matrice[i].length;j++) {
				System.out.print(matrice[i][j]);
			  }
			System.out.println("");
			}
		
	}
	static void afisare_linie_cu_linie(int a[][]) {
	
		for(int i=0;i<a.length;i++){
			System.out.print("Linia "+(i+1)+":" );
			for(int j=0;j<a[i].length;j++) {
				System.out.print(a[i][j]);
			  }
			System.out.println("");
			}
		}
	static void afisare_coloana_cu_coloana(int a[][],int n) {
		int x=0;
		for(int i=0;i<n;i++){
			System.out.print("Coloana "+(i+1)+":" );
			for( int j=x;j<a.length;j++) {
				System.out.print(a[j][i]);
			  }
			x++;
			System.out.println("");
			}
	}
	
	static void limitare(int a[][], int limita1, int limita2) {
	    for (int i = 0; i < a.length; i++) {
	        for (int j = 0; j < a[i].length; j++) {
	            if (a[i][j] > limita1 && a[i][j] < limita2) {
	                a[i][j] = 0;
	            }
	        }
	    }
	}
	 
	static void index(int a[][],int i_index, int j_index) {
	   System.out.println("Vecinii de pe linie:");
	   for (int i = 0; i < a.length; i++) {
	        for (int j = 0; j < a[i].length; j++)
		       if(i==i_index && j==j_index)try {System.out.print(a[i][j-1]);
		       System.out.println(a[i][j+1]);
		      }catch( Exception ioe) { System.out.println(a[i][j+1]);
		     break;}
		       }
	   System.out.println("");
	   System.out.println("Vecinii de pe coloana:");
	   for (int i = 0; i < a.length; i++) {
	        for (int j = 0; j < a[i].length; j++)
		       if(i==i_index && j==j_index)try {System.out.print(a[i+1][j]);
		       System.out.println(a[i-1][j]);
		       }catch( Exception ioe) {System.out.println(a[i-1][j]);
		     break;}
		       }
	   System.out.println("");
	    }
}
