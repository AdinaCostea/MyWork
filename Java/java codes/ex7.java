//Sa se citeasca de la consola o valoare intreaga mai mare decat 16.777.216. 
//Sa se foloseasca masti pe biti pentru a izola fiecare din cei 4 octeti ai valorii citite. 
//Afisati atat valoarea initiala cat si valorile izolate in zecimal, binar si hexazecimal.
 
import java.util.Scanner;

public class ex7 {
	static Scanner ok = new Scanner(System.in);

	public static void main(String[] args) {
		
      System.out.println("Introduceti o valoare mai mare decat 16.777.216 ");
      int valoare=ok.nextInt();
      if (valoare>= 16777216) {
    	  System.out.println("Valoare initiala este:" + valoare);
    	  System.out.println(valoare+" in binar: " +Integer.toBinaryString(valoare));
    	   int masca=255;
    	   int octet1=(valoare >> 24) &masca;
    	   int octet2=(valoare >> 16)&masca;
    	   int octet3=(valoare >> 8) & masca;
    	   int octet4=valoare&masca;
    	 System.out.println("primul octet = "+octet1+" = "+Integer.toBinaryString(octet1)+"="+Integer.toHexString(octet1));
    	 System.out.println("al doilea octet = "+octet3+" = "+Integer.toBinaryString(octet2)+"="+Integer.toHexString(octet2));
    	 System.out.println("al treilea octet = "+octet2+" = "+Integer.toBinaryString(octet3)+"="+Integer.toHexString(octet3));
    	 System.out.println("al patrulea octet = "+octet4+" = "+Integer.toBinaryString(octet4)+"="+Integer.toHexString(octet4));
      }
      else System.out.println("Valoare introdusa nu este mai mare decat 16.777.216.");
	}

}
