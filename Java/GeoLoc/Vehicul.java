//Definiți o clasă Vehicul ce are ca și atribute numărul maxim de pasageri, culoarea și viteza maximă de deplasare
public class Vehicul {
private int nr_maxim_pasageri=0;
private String culoare=new String();
private int viteza_maxima=0;
//constructori
public Vehicul() {
	
}
public Vehicul(int nr_maxim_pasageri,String culoare,int viteza_maxima) {
	this.nr_maxim_pasageri=nr_maxim_pasageri;
	this.culoare=culoare;
	this.viteza_maxima=viteza_maxima;
}
//setteri
public void set_pasageri(int nr_maxim_pasageri) {
	this.nr_maxim_pasageri=nr_maxim_pasageri;
}
public void set_culoare(String culoare) {
	this.culoare=culoare;
}
public void set_viteza_maxima(int viteza_maxima) {
	this.viteza_maxima=viteza_maxima;
}
//getteri
public int get_pasageri() {
	return nr_maxim_pasageri;
}
public String get_culoare() {
	return culoare;
}
public int get_viteza_maxima() {
	return viteza_maxima;
}
//metode

}
