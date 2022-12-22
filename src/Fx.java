import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.*;
import java.util.Scanner;

public class Fx
{
    public JPanel panel1;
    private JTextArea tx_Math;
    private JButton bt_run;
    private JButton bt_clear;
    private JButton bt_loadoutput;
    private JTextArea tx_source;
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
        bt_clear.addActionListener(new ActionListener()
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
        bt_run.addActionListener(new ActionListener()
        {
            @Override
            public void actionPerformed(ActionEvent e)
            {
                bt_run.setVisible(false);
                bt_loadoutput.setVisible(true);
                // Run a java app in a separate system process
                Process proc = null;
                try
                {
                    SaveFile(tx_source.getText() , "sourceTest.txt");
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
        bt_loadoutput.addActionListener(new ActionListener()
        {
            @Override
            public void actionPerformed(ActionEvent e)
            {
                tx_Math.setText(null);
                //code_bt.setVisible(false);
                //mathFile_bt.setVisible(false);
                bt_run.setVisible(false);
                bt_loadoutput.setVisible(true);

                tx_Math.setLineWrap(true);
                fileChooser = new JFileChooser();
                String dir = System.getProperty("user.dir");
                File file = new File(dir + "\\function.txt");
                Scanner sc = null;
                try
                {
                    sc = new Scanner(file);
                } catch (FileNotFoundException fileNotFoundException)
                {
                    fileNotFoundException.printStackTrace();
                }

                while (sc.hasNextLine())
                    tx_Math.append(sc.nextLine() + "\n");
                sc.close();

            }
        });
    }
    public void initUI() throws FileNotFoundException
    {
        tx_source.setText("");
        tx_Math.setText("");
        bt_run.setVisible(true);
        bt_loadoutput.setVisible(false);
       fileChooser = new JFileChooser();
        String dir = System.getProperty("user.dir");
//        File myObj = new File(dir+ "\\function.txt");
//        if (myObj.exists())
//            myObj.delete();

        File file = new File(dir + "\\config.txt");
        Scanner sc = new Scanner(file);
        MathExePath = sc.nextLine();

        sc.close();
        file = new File(dir + "\\sourceTest.txt");
        sc = null;
        try
        {
            sc = new Scanner(file);
        } catch (FileNotFoundException fileNotFoundException)
        {
            fileNotFoundException.printStackTrace();
        }

        while (sc.hasNextLine())
            tx_source.append(sc.nextLine() + "\n");
        sc.close();
    }

    public void SaveFile(String text, String fileName) throws IOException
    {
        String dir = System.getProperty("user.dir");
        BufferedWriter writer = new BufferedWriter(new FileWriter(dir +"\\" +fileName));
        writer.write(text);
        writer.close();

    }



}
