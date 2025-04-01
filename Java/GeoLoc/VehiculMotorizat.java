/**Extindeți clasa Vehicul în cadrul clasei VehiculMotorizat ce include atributele de poziționare geografică (prin intermediul 
unei instațe a unei alte clase numită GeoLoc cu atributele latitudine și longitudine) și viteza de deplasare. **/
import java.lang.Math;
public class VehiculMotorizat extends Vehicul {
	private int viteza;
	GeoLoc pozitie=new GeoLoc(1,1);;
//constructor
public VehiculMotorizat(int a,String b,int c,int viteza) {
	super(a,b,c);
	 this.viteza = viteza;
}
public VehiculMotorizat() {
	
}
//setter
public void set_viteza(int viteza) {
	this.viteza=viteza;
}
//geter
public int get_viteza() {
	return viteza;
}

/**Un vehicul motorizat se poate deplasa din locația curentă într-un nou punct prin intermediul metodei deplaseaza(GeoLoc 
pozitieNoua). Metoda returnează timpul necesar deplasării solicitate.**/
public double deplaseaza(GeoLoc pozitieNoua) {
double distanta = Math.sqrt(Math.pow((pozitie.getLatitudine()-pozitieNoua.getLatitudine()), 2)+
		Math.pow(pozitie.getLongitudine()-pozitieNoua.getLongitudine(), 2));
double timp = distanta / viteza;
return timp;
}
}
