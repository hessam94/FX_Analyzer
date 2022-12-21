import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.MouseEvent;
import java.awt.event.MouseMotionAdapter;
import java.io.*;
import java.util.Scanner;

public class Fx
{
    private JButton mathFile_bt;
    public JPanel panel1;
    private JButton code_bt;
    private JTextArea Code_tx;
    private JTextArea Math_tx;
    private JButton run_bt;
    private JButton clear_bt;
    private JButton loadoutput_bt;
    private JFileChooser fileChooser;
    private String MathExePath;

    public Fx () throws FileNotFoundException
    {
        initUI();

//        mathFile_bt.addActionListener(new ActionListener()
//        {
//            @Override
//            public void actionPerformed(ActionEvent e)
//            {
//                int returnVal = fileChooser.showOpenDialog(Fx.this.panel1);
//
//                if (returnVal == JFileChooser.APPROVE_OPTION) {
//                    File file = fileChooser.getSelectedFile();
//                    //This is where a real application would open the file.
//                    MathExePath = file.getPath();
//                    mathFile_bt.setVisible(false);
//                    run_bt.setVisible(true);
//                    //Code_tx.append("Opening: " + MathExePath + "\n");
//                } else {
//                    //Code_tx.append("Open command cancelled by user." + "\n");
//                }
//            }
//        });

//        code_bt.addActionListener(new ActionListener()
//        {
//            @Override
//            public void actionPerformed(ActionEvent e)
//            {
//                int returnVal = fileChooser.showOpenDialog(Fx.this.panel1);
//                if (returnVal == JFileChooser.APPROVE_OPTION) {
//                    File file = fileChooser.getSelectedFile();
//                    //This is where a real application would open the file.
//                    MathExePath = file.getPath();
//                    code_bt.setVisible(false);
//                    run_bt.setVisible(true);
//                    Code_tx.append("Opening: " + MathExePath + "\n");
//                } else {
//                    Code_tx.append("Open command cancelled by user." + "\n");
//                }
//            }
//        });
        clear_bt.addActionListener(new ActionListener()
        {
            @Override
            public void actionPerformed(ActionEvent e)
            {
                try
                {
                    initUI();
                } catch (FileNotFoundException fileNotFoundException)
                {
                    fileNotFoundException.printStackTrace();
                }
            }
        });
        run_bt.addActionListener(new ActionListener()
        {
            @Override
            public void actionPerformed(ActionEvent e)
            {
                run_bt.setVisible(false);
                loadoutput_bt.setVisible(true);
                // Run a java app in a separate system process
                Process proc = null;
                try
                {
                    proc = Runtime.getRuntime().exec("cmd /c start \"\" java -jar javaparser-core.jar  sourceTest.txt " + MathExePath );

                    proc.waitFor();
                    InputStream in = proc.getInputStream();
                    InputStream err = proc.getErrorStream();
                    OutputStream out = proc.getOutputStream();

                } catch (IOException | InterruptedException ioException)
                {
                    ioException.printStackTrace();
                }

            }
        });
        loadoutput_bt.addActionListener(new ActionListener()
        {
            @Override
            public void actionPerformed(ActionEvent e)
            {
                Math_tx.setText(null);
                //code_bt.setVisible(false);
                //mathFile_bt.setVisible(false);
                run_bt.setVisible(false);
                loadoutput_bt.setVisible(true);

                Math_tx.setLineWrap(true);
                fileChooser = new JFileChooser();
                String readme = System.getProperty("user.dir");
                File file = new File(readme + "\\function.txt");
                Scanner sc = null;
                try
                {
                    sc = new Scanner(file);
                } catch (FileNotFoundException fileNotFoundException)
                {
                    fileNotFoundException.printStackTrace();
                }

                while (sc.hasNextLine())
                    Math_tx.append(sc.nextLine() + "\n");

            }
        });
    }
    public void initUI() throws FileNotFoundException
    {
        //Code_tx.setText(null);
        //code_bt.setVisible(false);
        //mathFile_bt.setVisible(true);
        run_bt.setVisible(true);
        loadoutput_bt.setVisible(false);
       fileChooser = new JFileChooser();
        String readme = System.getProperty("user.dir");
        File file = new File(readme + "\\config.txt");
        Scanner sc = new Scanner(file);
        MathExePath = sc.nextLine();

    }


}
