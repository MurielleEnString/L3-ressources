public class Billet {
	private final Etat etatNonReserve;
	private final Etat etatReserve;
	private final Etat etatConfirmeEtPaye;
	private final Etat etatDepartAvion;
	private Etat etatActuel;
	private String date;
	
	public Billet(String d) {
		date = d;
		etatNonReserve = new EtatNonReserve(this);
		etatReserve = new EtatReserve(this);
		etatConfirmeEtPaye = new EtatConfirmeEtPaye(this);
		etatDepartAvion = new EtatDepartAvion(this);
		etatActuel = etatNonReserve; //état actuel
	}
	
	//setters
	public void setEtat(Etat e) {
		etatActuel = e;
	}
	
	public void setDate(String d) {
		date = d;
	}
	
	//getters
	public Etat getEtatNonReserve() {
		return etatNonReserve;
	}
	
	public Etat getEtatReserve() {
		return etatReserve;
	}
	
	public Etat getEtatConfirmeEtPaye() {
		return etatConfirmeEtPaye;
	}
	
	public Etat getEtatDepartAvion() {
		return etatDepartAvion;
	}
	
	//actions
	public void confirmerEtPayer() {
		etatActuel.confirmerEtPayer();
	}
	
	public void annuler() {
		etatActuel.annuler();
	}
	
	public void departAvion() {
		etatActuel.departAvion();
	}
	
	public void reserverBillet() {
		etatActuel.reserverBillet();
	}
	
	public void modifierDate(String d) {
		etatActuel.modifierDate(d);	
	}
	
}
