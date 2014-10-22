public class Main {
    public static void main(String [] args) {
        Station s = new Station(5.0);
        Observer a = new Affichage(s);
        Observer b = new AffichageMoyenne(s);

        s.setTemp(5.0);
        s.setTemp(5.0);
        s.setTemp(5.0);
        s.setTemp(5.0);
        s.setTemp(5.0);
        s.setTemp(5.0);
    }
}