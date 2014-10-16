import java.lang.Math.*;

public class Antenne implements Comparable<Antenne> {
	private int id;
	private Position pos;
	private Intervalle plageFrequence;
	
	public Antenne(int id, int freqG, int freqD, double x, double y) {
		this.id = id;
		this.pos = new Position(x,y);
		this.plageFrequence = new Intervalle(freqG, freqD);
	}
	
	public int getId() {
		return this.id;
	}
	
	public int getFreqBorneGauche() {
		return this.plageFrequence.getBorneGauche();
	}
	
	public int getFreqBorneDroite() {
		return this.plageFrequence.getBorneDroite();
	}
	
	public double getPosX() {
		return this.pos.getX();
	}
	
	public double getPosY() {
		return this.pos.getY();
	}
	
	public String toString() {
		String res = this.id + ":[" + this.plageFrequence.getBorneGauche() + "-" + this.plageFrequence.getBorneDroite() + "]@(" + this.pos.getX() + ", " + this.pos.getY() + ")";
		return res;
	}
	
	public double distanceEntre(Antenne ant) {
		double distance = Math.sqrt( Math.pow(ant.getPosX() - this.pos.getX(), 2) + Math.pow(ant.getPosY() - this.pos.getY(), 2) );
		return distance;
	}
	
	public double largeurPlageFreq() {
		return this.plageFrequence.getLargeur();
	}
	
	public int compareTo(Antenne ant) {
		double largeurA = this.plageFrequence.getLargeur();
		double largeurB = ant.largeurPlageFreq();
		int res = -1;
		if(largeurA < largeurB) {
			res = -1;
		} else if(largeurA == largeurB) {
			res = 0;
		} else if(largeurA > largeurB) {
			res = 1;
		}
		return res;
	}
	
}
