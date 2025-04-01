/**Să se implementeze o clasă numită Cerc cu atributele private culoare (int), raza (float), pozitie in plan (2 
coordonate intregi).Se definesc constructorii și metodele mutator și accesor specifice.Valoarea culorii este 
împărțită în 4 octeți reprezentând transparența, apoi cantitatile de R, G si B.În metoda main (inclusă într-o altă clasă) se citesc de la tastatură datele aferente unui șir de n obiecte de tip 
Cerc.Să se implementeze metodele care primesc ca parametru șirul de obiecte și afișează:
- datele cercurilor a căror centru este inclus într-unul din cele 4 cadrane
- datele cercurilor care sunt incluse în întregime într-unul din cele 4 cadrane
- datele cercurilor care au centrele pe aceeași dreaptă orizontală sau verticală
- datele cercurilor care au cantitatea de R, G sau B într-un anumit interval specificat**/
public class Cerc {
private int culoare;
private float raza;
private int pozitie_in_plan_1;
private int pozitie_in_plan_2;
//constructori
public Cerc() {
	super();
}
public Cerc(int culoare,float raza,int pozitie_in_plan_1,int pozitie_in_plan_2) {
	this.culoare=culoare;
	this.raza=raza;
	this.pozitie_in_plan_1=pozitie_in_plan_1;
	this.pozitie_in_plan_2=pozitie_in_plan_2;
	
}
//geteri
public int get_culoare() {
	return culoare;
}
public float get_raza() {
	return raza;
}
public int get_pozitie1() {
	return pozitie_in_plan_1;
}
public int get_pozitie2() {
	return pozitie_in_plan_2;
}
//seteri
public void set_culoare(int culoare) {
	this.culoare=culoare;
}
public void set_raza(float raza) {
	this.raza=raza;
}
public void set_pozitie1(int pozitie_in_plan_1 ) {
	this.pozitie_in_plan_1=pozitie_in_plan_1;
}
public void set_pozitie2(int pozitie_in_plan_2) {
	this.pozitie_in_plan_2=pozitie_in_plan_2;
}
//afisare date
public void afisare(Cerc obiect) {
	System.out.println("Culoare:"+get_culoare());
	System.out.println("Raza:"+get_raza());
	System.out.println("Coordonata x:"+get_pozitie1());
	System.out.println("Coordonata y:"+get_pozitie2());
}
//datele cercurilor a căror centru este inclus într-unul din cele 4 cadrane
public  void centru_cerc(Cerc obiect) {
	int x=get_pozitie1();
	int y=get_pozitie2();
	if(x>0 && y>0) System.out.println("Centrul cercului ("+x+","+y+") se afla in cadranul 1.Raza cercului este "+get_raza()+" si culoarea cercului este "+get_culoare());
	if(x<0 && y>0) System.out.println("Centrul cercului ("+x+","+y+") se afla in cadranul 2.Raza cercului este "+get_raza()+" si culoarea cercului este "+get_culoare());
	if(x<0 && y<0) System.out.println("Centrul cercului ("+x+","+y+") se afla in cadranul 3.Raza cercului este "+get_raza()+" si culoarea cercului este "+get_culoare());
	if(x>0 && y<0) System.out.println("Centrul cercului ("+x+","+y+") se afla in cadranul 4.Raza cercului este "+get_raza()+" si culoarea cercului este "+get_culoare());
	if(x==0 && y==0) System.out.println("Centrul cercului ("+x+","+y+") se afla in origie.Raza cercului este "+get_raza()+" si culoarea cercului este "+get_culoare());
	
}
//datele cercurilor care sunt incluse în întregime într-unul din cele 4 cadrane
public void cadran_cerc(Cerc obiect) {
	int x=get_pozitie1();
	int y=get_pozitie2();
	if(x-get_raza()<0 && y-get_raza()<0) {
		if(x>0 && y>0) {
			System.out.println("Cercul ("+x+","+y+") se afla in cadranul 1");
			afisare(obiect);
		}
		if(x<0 && y>0) {
			System.out.println("Cercul ("+x+","+y+") se afla in cadranul 2");
			afisare(obiect);
		}
		if(x<0 && y<0) {
			System.out.println("Cercul ("+x+","+y+") se afla in cadranul 3");
			afisare(obiect);
		}
		if(x>0 && y<0) {
			System.out.println("Cercul ("+x+","+y+") se afla in cadranul 4");
			afisare(obiect);
		}
	}
}
//datele cercurilor care au centrele pe aceeași dreaptă orizontală sau verticală
public void centru_pe_axe(Cerc obiect) {
	int x=get_pozitie1();
	int y=get_pozitie2();
	if(x==0 && y!=0) {
		System.out.println("Centrul cercului ("+x+","+y+") se afla pe axa y");
	}
	if(x!=0 && y==0) {
		System.out.println("Centrul cercului ("+x+","+y+") se afla pe axa x");
	}
}
//datele cercurilor care au cantitatea de R, G sau B într-un anumit interval specificat
public void culori(Cerc obiect,int a,int b) {
	int x=get_pozitie1();
	int y=get_pozitie2();
	int R=(get_culoare() >> 16)&0xFF;
	int G=(get_culoare() >> 8)&0xFF;
	int B=(get_culoare()>> 4)&0xFF;
	int transparenta=get_culoare()&0xFF;
	if(a<=R && R<=b) {
		System.out.println("Cercul ("+x+","+y+") are culoarea rosu in cantitatea specificata");
		afisare(obiect);
	}
	if(a<=G && G<=b) {
		System.out.println("Cercul ("+x+","+y+") are culoarea galben in cantitatea specificata");
		afisare(obiect);
	}
	if(a<=B && B<=b) {
		System.out.println("Cercul ("+x+","+y+") are culoarea albastru  in cantitatea specificata");
		afisare(obiect);
	}
	if(a<=transparenta && transparenta<=b) {
		System.out.println("Cercul ("+x+","+y+") are transparenta in cantitatea specificata");
		afisare(obiect);
	}
}
}
