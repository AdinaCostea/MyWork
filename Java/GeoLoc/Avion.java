/**Creați o nouă clasă Avion ce extinde clasa VehiculMotorizatși care adaugă atributul propriu altitudine.**/
public class Avion extends VehiculMotorizat {
  private int altitudine=0;
 //constructor
	public Avion(int a, String b, int c, int viteza,int altitudine) {
		super(a, b, c, viteza);
		this.altitudine=altitudine;
	}
	public Avion() {
		
	}
	//setteri si getteri
	public int getAltitudine() {
		return altitudine;
	}
	public void setAltitudine(int altitudine) {
		this.altitudine = altitudine;
	}
  /**Suprascrieți metoda de deplasare ținând cont de faptul că avionul se va deplasa pe arcul de cerc definit la sol de poziția curentă și de noua 
localizare și luând în calcul altitudinea la care zboară avionul (considerați că altitudinea e atinsă doar la jumătatea traseului 
de deplasare)**/
	@Override
	public double deplaseaza(GeoLoc pozitieNoua) {
		double distanta = Math.sqrt(Math.pow((pozitie.getLatitudine()-pozitieNoua.getLatitudine()), 2)+
				Math.pow(pozitie.getLongitudine()-pozitieNoua.getLongitudine(), 2));
      double unghi = Math.atan2(pozitieNoua.getLongitudine() - pozitie.getLongitudine(),
              pozitieNoua.getLatitudine() - pozitie.getLatitudine());
      double timp2=distanta / get_viteza()*2;
      double raza = (distanta/2) / Math.sin(unghi);
      double lungime_arc = unghi * raza;
      double timp1=timp2+(lungime_arc / get_viteza());
      return timp2;
	}
}
