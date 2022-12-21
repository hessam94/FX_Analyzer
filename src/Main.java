import javax.swing.*;
import java.io.FileNotFoundException;

public class Main
{
    public static void main(String argv[]) throws FileNotFoundException
    {
        JFrame jf = new JFrame(String.valueOf(new Fx()));
        jf.setContentPane(new Fx().panel1);
        jf.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        jf.pack();
        jf.setLocationRelativeTo(null);
        jf.setVisible(true);

    }
}
