import java.lang.Math;
public class HexagonRegulat implements FormaGeometrica{
 private int latura=0;
 public HexagonRegulat() {
	 
 }
 public HexagonRegulat(int latura) {
	 this.latura=latura;
 }
 public static double Aria(int latura) {
	  	double aria=6*latura*latura*Math.sqrt(3)/4;
	  	return aria;
	  }
	  public static double Perimetru(int latura) {
	  	double perimetru=6*latura;
	  	return perimetru;
	  }
}
