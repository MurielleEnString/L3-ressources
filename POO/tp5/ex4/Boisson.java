public abstract class Boisson {
	protected String description;
	protected double indiceTaille;
	
	public Boisson(String d) {
		description = d;
		indiceTaille = 1;
	}
	
	public Boisson() {
		description = "";
		indiceTaille = 1;
	}
	
	public String getDescription() {
		if(indiceTaille == 0.75) {
			return description + " (taille petite)";
		} else if (indiceTaille == 1.25) {
			return description + " (taille grande)";
		} else {
			return description + " (taille moyenne)";
		}
	}
	
	public double cout() {
		return indiceTaille*10;
	}
	
	public void setTaillePetite() {
		indiceTaille = 0.75;
	}
	
	public void setTailleNormale() {
		indiceTaille = 1;
	}
	
	public void setTailleGrande() {
		indiceTaille = 1.25;
	}

}
