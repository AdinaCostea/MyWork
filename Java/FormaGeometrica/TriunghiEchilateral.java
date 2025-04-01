import java.lang.Math;
public class TriunghiEchilateral implements FormaGeometrica {
  private int latura=0;
  public TriunghiEchilateral() {
	  
  }
  public TriunghiEchilateral(int latura) {
	  this.latura=latura;
  }
  public static double Aria(int latura) {
  	double aria=latura*latura*Math.sqrt(3)/4;
  	return aria;
  }
  public static double Perimetru(int latura) {
  	double perimetru=3*latura;
  	return perimetru;
  }
}
