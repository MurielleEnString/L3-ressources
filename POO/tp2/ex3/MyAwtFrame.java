import java.awt.Color;
import java.awt.Font;
import java.awt.TextArea;
import java.awt.Frame;

public class MyAwtFrame extends Frame implements LibrairieAffichage {
	TextArea txt;

	public MyAwtFrame(String s) {
		txt = new TextArea();
		
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

