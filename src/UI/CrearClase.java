package UI;

import javax.swing.*;

public class CrearClase {
    private JTextField txtasignatura;
    private JButton btncrear;
    private JPanel crearClase;
    private JTextField txtaula;
    private JTextField txtNomClase;

    public static void main(String[] args) {

        JFrame frame = new JFrame("CrearClase");
        frame.setContentPane(new CrearClase().crearClase);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frame.pack();
        frame.setLocationRelativeTo(null);
        frame.setResizable(false);
        frame.setSize(500,500);
        frame.setVisible(true);


    }

}

