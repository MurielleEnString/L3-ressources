import java.awt.Color;
import java.awt.Font;
import javax.swing.JFrame;
import javax.swing.JTextArea;

public class FrameMain  {
  private LibrairieAffichage myFrame_;

  public FrameMain(String s) {
    myFrame_ = new MyAwtFrame(s);
  }

  public void show() {
    myFrame_.show();
  }

  public void setSize(int x, int y) {
    myFrame_.setSize(x, y);
  }

  public void setTitle(String s) {
    myFrame_.setTitle(s);
  }
 
  public static void main(String [] args) {
    FrameMain frame = new FrameMain("Tapez votre texte ici :\n");
    frame.setSize(313,233);
    frame.setTitle("Changement de police");
    frame.show();
   }
}
