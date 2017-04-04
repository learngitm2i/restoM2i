package restoM2i.dto;

public class Menus {
	
	private String entrees;
	private String plats;
	private String desserts;
	private float prix;
	
	
	
	public Menus(String entrees, String plats, String desserts, float prix) {
		this.entrees = entrees;
		this.plats = plats;
		this.desserts = desserts;
		this.prix = prix;
	}
	
	public String getEntrees() {
		return entrees;
	}
	public void setEntrees(String entrees) {
		this.entrees = entrees;
	}
	public String getPlats() {
		return plats;
	}
	public void setPlats(String plats) {
		this.plats = plats;
	}
	public String getDesserts() {
		return desserts;
	}
	public void setDesserts(String desserts) {
		this.desserts = desserts;
	}
	public float getPrix() {
		return prix;
	}
	public void setPrix(float prix) {
		this.prix = prix;
	}
}
