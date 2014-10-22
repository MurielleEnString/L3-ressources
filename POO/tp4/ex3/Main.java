import java.util.*;
import java.net.*;
import java.io.*;

public class Main {
    public static void main(String [] args) {
        DonneeBourse d = new DonneeBourse(0.0,0.0,0.0);
        Observer obs = new Affichage(d);
        try {
            URL url = new URL("http://finance.yahoo.com/d/quotes.csv?s=^FCHI+^IXIC+^N225&f=l1");
            BufferedReader in = new BufferedReader(new InputStreamReader(url.openStream()));

            String inputLine;
            int cpt = 0;
            double cac = 0.0;
            double nasdaq = 0.0;
            double nikkei = 0.0;
            while ((inputLine = in.readLine()) != null) {
                //on récupère la bonne valeur en fonction du nombre de tours de boucle
                switch (cpt) {
                    case 0:
                        cac = Double.parseDouble(inputLine);
                        break;
                    case 1:
                        nasdaq = Double.parseDouble(inputLine);
                        break;
                    case 2:
                        nikkei = Double.parseDouble(inputLine);
                        break;
                    default:
                        break;
                }
                //on incrémente cpt
                ++cpt;
            }
            in.close();
            //on met à jour les donnéees de la bourse
            d.setDonnees(cac, nasdaq, nikkei);
        } catch(Exception e) {
            System.out.println("Exception");
        }
    }
}