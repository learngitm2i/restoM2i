package restoM2i.dto;

public class Menus {
	
	private String entrees;
	private String plats;
	private String desserts;
	
	
	
	
	public Menus() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Menus(String entrees, String plats, String desserts) {
		this.entrees = entrees;
		this.plats = plats;
		this.desserts = desserts;
		
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
	
	
}
