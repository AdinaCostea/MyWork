/**cilindru are drept atribute raza_bazei și inaltimea**/
import java.lang.Math;
public class Cilindru extends FiguraSpatiala{
 private int raza_bazei=0;
 private int inaltimea=0;
 //getteri
 public int get_raza_b() {
	 return raza_bazei;
 }
 public int get_inaltimea() {
	 return inaltimea;
 }
 //setteri
 public void set_raza_b(int raza_bazei) {
	 this.raza_bazei=raza_bazei;
 }
 public void set_inaltimea(int inaltimea) {
	 this.inaltimea=inaltimea;
 }
	@Override
	public double aria() {
		double aria=2*Math.PI*Math.pow(get_raza_b(),2)+Math.PI*Math.pow(get_raza_b(),2)*get_inaltimea();
		return aria;
	}
	@Override
	public String toString() {
		String denumire=new String("Cilindru");
		return denumire;
		 
	 }
}
