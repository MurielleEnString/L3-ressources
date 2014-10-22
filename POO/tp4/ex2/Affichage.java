public class Affichage extends Observer {

    public Affichage(Station s) {
        super(s);
    }

    public void update(double t) {
        super.update(t);
        System.out.println("la température courante est de " + t);
    }
}