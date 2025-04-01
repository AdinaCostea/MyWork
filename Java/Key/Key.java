
/**. Scrieți o aplicație Java care definește o cheie de autentificare de tipul: XXXXX-XXXXX-XXXXX-XXXXX, unde X 
reprezintă un caracter ce poate fi cifră sau literă. Scrieți un program care verifică dacă această cheie are exact 4 
grupuri de caractere a câte 5 caractere fiecare și separate prin caracterul ‘-‘. De asemenea, calculați numărul de 
cifre și litere din cheia de autentificare. Numărul de cifre trebuie să fie mai mare decât numărul de litere, iar 
numărul de litere nu poate să fie 0. În cazul în care nu este îndeplinită cel puțin o condiție din cele menționate 
anterior, afișați mesajul: ”Cheie de autentificare incorectă!”
**/

public class Key {
  public  String key = new String();
  
  //verificare 
  public void verificare_cheie(String key) {
	  if(key.length()!=23) {
		  System.out.println("Cheie de autentificare incorecta!");
		  System.exit(1);
	  }
	  for(int i=0;i<key.length();i++) {
		 
		  if (i % 6 == 5) {
              if (key.charAt(i) != '-') {
            	  System.out.println("Cheie de autentificare incorecta!");
        		  System.exit(1);
              }
	  }
  }

}
  //numarul cifrelor si al literelor
  public void verificare_nr(String key) {
	  int nr_cifre=0;
	  
	  for(int i=0;i<key.length();i++) {
		  if(Character.isDigit(key.charAt(i))) {
			  nr_cifre++;
		  }
			  
	  }
	  int nr_litere=key.length()-nr_cifre-3;
	  if(nr_litere==0 || nr_litere>nr_cifre) {
		  System.out.println("Cheie de autentificare incorecta!");
		  System.exit(1);
	  }
  }
  }
