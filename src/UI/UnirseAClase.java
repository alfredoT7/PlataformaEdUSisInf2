package UI;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class UnirseAClase extends JFrame implements ActionListener {
    private JTextField classCodeField;
    private JButton joinButton;

    public UnirseAClase() {
        setTitle("Unirse a una clase");
        setSize(300, 100);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        setLocationRelativeTo(null); // Centrar la ventana en la pantalla

        JPanel panel = new JPanel();
        panel.setLayout(new GridLayout(2, 1));

        JLabel label = new JLabel("Código de clase:");
        classCodeField = new JTextField();
        joinButton = new JButton("Unirse a clase");

        joinButton.addActionListener(this);

        panel.add(label);
        panel.add(classCodeField);
        panel.add(joinButton);

        add(panel);
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == joinButton) {
            String classCode = classCodeField.getText();
            if (!classCode.isEmpty()) {
                // Lógica para unirse a una clase con el código especificado
                System.out.println("Unirse a clase con código: " + classCode);
                // Aquí puedes llamar al método correspondiente para unirse a la clase con el código
            } else {
                JOptionPane.showMessageDialog(this, "Por favor, ingresa un código de clase válido", "Error", JOptionPane.ERROR_MESSAGE);
            }
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            UnirseAClase unirseAClase = new UnirseAClase();
            unirseAClase.setVisible(true);
        });
    }
}
