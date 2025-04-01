/** Sfera derivată din FiguraSpatiala. O sferă are raza drept atribut privat întreg și 
implementează corpul metodei abstracte mostenite aria().**/

import java.lang.Math;
public class Sfera extends FiguraSpatiala{
   private int raza=0;
   //getteri
   public int get_raza() {
	   return raza;
   }
   //setteri
   public void set_raza(int raza) {
        this.raza=raza;
	}
	@Override
	public double aria() {
		double aria=Math.PI*Math.pow(get_raza(), 2);
		return aria;
	}
	@Override
	public String toString() {
		String denumire=new String("Sfera");
		return denumire;
		 
	 }
	
}
