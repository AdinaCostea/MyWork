
public class GeoLoc {
	private int latitudine;
	private int longitudine;
	//constructor
	public GeoLoc(int latitudine, int longitudine) {
        this.setLatitudine(latitudine);
        this.setLongitudine(longitudine);
    }
	public GeoLoc() {
		
	}
	public int getLongitudine() {
		return longitudine;
	}
	public void setLongitudine(int longitudine) {
		this.longitudine = longitudine;
	}
	public int getLatitudine() {
		return latitudine;
	}
	public void setLatitudine(int latitudine) {
		this.latitudine = latitudine;
	}
}
