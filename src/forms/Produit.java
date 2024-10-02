package forms;

public class Produit {
	private String label;
	private double prix;
	private boolean disponibilité;
	public String getLabel() {
		return label;
	}
	public void setLabel(String label) {
		this.label = label;
	}
	public double getPrix() {
		return prix;
	}
	public void setPrix(double prix) {
		this.prix = prix;
	}
	public boolean isDisponibilité() {
		return disponibilité;
	}
	public void setDisponibilité(boolean disponibilité) {
		this.disponibilité = disponibilité;
	}

}
