/**Se defineste un sir de variabile de tip String care va fi populat cu toate cartile dintr-un pachet de joc. Se vor 
extrage aleator carti in pachet pana cand cartea curenta va fi de trefla cu valoarea mai mare decat 8. Sa se 
afiseze la fiecare pas cartea curenta si numarul de carti deja extrase.
Indiciu: Folosiți un generator de numere aleatoare. Cartile deja extrase sunt eliminate.
**/
/**
 As-11
 Valet-12
 Dama-13
 Rege-14**/


import java.util.Random;
//import java.util.Arrays;
public class ex9 {
	public static void main(String[] args) {
		String pachet_carti[]=new String[52];
		Random ok=new Random();
		for(int i=0;i<pachet_carti.length;i++){
      		int nr=2;
      		if(i<9) {
      			pachet_carti[i]=Integer.toString(nr)+" de Trefla";
      			nr++;
      		}
      		nr=2;
      		if(i<18) {
      			pachet_carti[i]=Integer.toString(nr)+" de Inima Neagra";
      			nr++;
      		}
      		nr=2;
      		if(i<27) {
      			pachet_carti[i]=Integer.toString(nr)+" de Inima Rosie ";
      			nr++;
      		}
      		nr=2;
      		if(i<36) {
      			pachet_carti[i]=Integer.toString(nr)+" de Romb";
      			nr++;
      		}
      		if(i>=36) {
      			//as
      			pachet_carti[36]="As de Inima Rosie";
      			pachet_carti[37]="As de Inima Neagra";
      			pachet_carti[38]="As de Trefla";
      			pachet_carti[39]="As de Romb";
      			//valet
      			pachet_carti[40]="Valent de Inima Rosie";
      			pachet_carti[41]="Valent de Inima Neagra";
      			pachet_carti[42]="Valent de Trefla";
      			pachet_carti[43]="Valent de Romb";
      			//dama
      			pachet_carti[44]="Dama de Inima Rosie";
      			pachet_carti[45]="Dama de Inima Neagra";
      			pachet_carti[46]="Dama de Trefla";
      			pachet_carti[47]="Dama de Romb";
      			//rege
      			pachet_carti[48]="Rege de Inima Rosie";
      			pachet_carti[49]="Rege de Inima Neagra";
      			pachet_carti[50]="Rege de Romb";
      			pachet_carti[51]="Rege de Trefla";
      			
                                                    	}
      	
      	} 
		int cnt=1;
		int extragere=ok.nextInt(52)+1;
		
		for(int i=0;i<pachet_carti.length;i++)
		{     
			if(extragere==7 || extragere==8 || extragere==38 || extragere==42 || extragere==46 || extragere==51)
				{System.out.println("Cartea extrasa este:"+pachet_carti[extragere]);
				System.out.println("Jocul s-a incheiat");
				System.out.println("Au fost extrase "+cnt+" carti");
				    System.exit(1);   }
			else {
			System.out.println("Mai incearca!");
			extragere=ok.nextInt(52)+1; 
			cnt++;}
			
         }
	
		
}		
   		
}
