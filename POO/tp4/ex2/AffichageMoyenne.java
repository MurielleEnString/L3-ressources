public class AffichageMoyenne extends Observer {
    private double[] dernieresValeurs;

    public AffichageMoyenne(Station s) {
        super(s);
        dernieresValeurs = new double[5];
        for(int ind = 0; ind < 5; ++ind) {
            dernieresValeurs[ind] = 0.0;
        }
    }

    public void update(double t) {
        super.update(t);
        //on décale toutes les valeurs dans dernieresValeurs d'un cran vers la droite
        for(int ind = 0; ind < 4; ++ind) {
            dernieresValeurs[ind] = dernieresValeurs[ind + 1];
        }
        //on insère la dernière valeur dans la dernière case du tableau
        dernieresValeurs[4] = t;
        //on calcule et affiche la moyenne
        double moyenne = 0.0;
        for(int ind = 0; ind < 5; ++ind) {
            moyenne += dernieresValeurs[ind];
        }
        moyenne = moyenne/5;
        System.out.println("la température moyenne est de " + moyenne);
    }
}