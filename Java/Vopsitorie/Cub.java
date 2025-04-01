/**cub este 
definit de variabila proprie latura**/
public class Cub extends FiguraSpatiala{
 private int latura=0;
 //getteri
 public int get_latura() {
	 return latura;
 }
 //setteri
 public void set_latura(int latura) {
	 this.latura=latura;
 }
	@Override
	public double aria() {
		double aria=4*get_latura();
		return aria;
	}
	@Override
	public String toString() {
		String denumire=new String("Cub");
		return denumire;
		 
	 }
}
