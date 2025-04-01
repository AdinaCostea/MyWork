/**2. Definiți o interfață denumită FormaGeometrica care are 2 metode care primesc ca parametru o valoare integer și 
returnează o valoare double reprezentînd aria, respectiv perimetrul unei forme geometrice echilaterale. 
Implementați interfața în 3 clase distincte pentru forme concrete de tip pătrat, triunghi echilateral și hexagon regulat. 
Se preiau datele pentru un număr N de forme geometrice de fiecare tip. 
Să se calculeze aria și perimetrul total al formelor geometrice, ținând cont că acestea nu se suprapun.
**/
public interface FormaGeometrica {
 public static double Aria(int a) {
	 double aria=a*a;
	 return aria;
 }
 public static double Perimetru(int a) {
	 double perimetru=a+a;
	 return perimetru;
 }
}
