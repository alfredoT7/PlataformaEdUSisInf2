package UI;

import javax.swing.*;
import java.awt.event.*;
import java.awt.*;
public class Materia extends JFrame implements ActionListener {

    private JLabel label1, label2, label3, label4, label5;
    private JButton button1;
    private JTextField textField1;
    private JTextArea textArea1;
    private JScrollPane scrollPane1, scrollPane2;


    public Materia() {
        setLayout(null);
        label1 = new JLabel();
        label1.setBounds(0, 0, 600, 100);
        add(label1);
        ImageIcon imagen = new ImageIcon("src/Clase.png");
        Icon iconoEscalado = new ImageIcon(imagen.getImage().getScaledInstance(label1.getWidth(), label1.getHeight(), Image.SCALE_DEFAULT));
        label1.setIcon(iconoEscalado);
        label2 = new JLabel();
        label2.setBounds(10, 100, 600, 30);
        add(label2);
        label3 = new JLabel("<html><div style='text-align: center;'>" + "Anunciar algo con la clase" + "</div></html>", SwingConstants.CENTER);
        label3.setBounds(10, 150, 100, 30);
        add(label3);
        label4 = new JLabel("<html><div style='text-align: center;'>" + "Agregar archivo adjunto" + "</div></html>", SwingConstants.CENTER);
        label4.setBounds(10, 200, 100, 35);
        add(label4);
        button1 = new JButton("Obtener clave de la clase para compartir");
        button1.setBounds(10, 250, 100, 45);
        add(button1);
        button1.setText("<html><p>Obtener clave </p><p>de la clase</p></html>");
        button1.addActionListener(this);
        textField1 = new JTextField();
        textField1.setBounds(130, 250, 200, 45);
        add(textField1);
        textArea1 = new JTextArea();
        scrollPane1 = new JScrollPane(textArea1);
        scrollPane1.setBounds(130, 150, 400, 50);
        add(scrollPane1);
        scrollPane2 = new JScrollPane();
        scrollPane2.setBounds(10, 310, 560, 230);
        add(scrollPane2);

        /*
        label5 = new JLabel("<html><div style='text-align: center;'>" + "Obtener clave de la clase para compartir" + "</div></html>", SwingConstants.CENTER);
        label5.setBounds(10, 250, 100, 45);
        add(label5);
         */
    }

    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == button1) {
            this.textField1.setText("Gustavo");
            setNomClase("Hola");

        }
    }



    public void inicioMateria(Materia formulario1) {

        formulario1.setSize(600, 600);
        formulario1.setLocationRelativeTo(null);
        formulario1.setVisible(true);
        formulario1.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    }

    public void setNomClase(String nomClase) {
        label2.setText(nomClase);
        label2.setFont(new Font("TIMES NEW ROMAN", Font.PLAIN, 20));
    }
}
