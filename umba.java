import java.util.Arrays;
import java.util.Scanner;
import java.awt.Graphics;
import java.awt.Graphics2D;
import java.awt.RenderingHints;
import javax.swing.JFrame;
import javax.swing.WindowConstants;
import javax.swing.colorchooser.DefaultColorSelectionModel;
import javax.swing.JPanel;

public class umba extends JPanel {
	    int x = 0;
	    int y = 0;
	    private void mBall() {
	    	   x = x + 1;
	    	   y = y + 0;
	    }
	  public void paint (Graphics g){
		     super.paint(g);
		     Graphics2D lala = (Graphics2D) g;
		    lala.setRenderingHint(RenderingHints.KEY_ANTIALIASING,RenderingHints.VALUE_ANTIALIAS_ON );
		     lala.fillOval(x, y,30, 30);
	  }
	public static void main(String[] args) throws InterruptedException {
	      JFrame led = new JFrame("What is life but a bunch of tests!");
	      umba game = new umba(); 
	       led.add(game);
	      led.setSize(800, 600);
	       led.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
	       led.setVisible(true);
               while(true){
            	     game.mBall();
            	        game.repaint();
            	      Thread.sleep(10);
               }	    
	}
}