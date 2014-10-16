import javax.swing.JFrame;
import javax.swing.JTextArea;
import java.awt.Color;
import java.awt.Font;

public class MyJFrame extends JFrame implements LibrairieAffichage {
	JTextArea txt = new JTextArea();

	public MyJFrame(String s) {
		setLayout(null);
	 
		txt.setBounds(3, 3, 300, 200);
		add(txt);
	 
		Font font = new Font("Verdana", Font.BOLD, 12);
		txt.setFont(font);
		txt.setForeground(Color.BLUE);
	 
		txt.setText(s);
  }
  
	public void show() {
		super.show();
  }

	public void setSize(int x, int y) {
		super.setSize(x, y);
  }

	public void setTitle(String s) {
		super.setTitle(s);
  }
}
