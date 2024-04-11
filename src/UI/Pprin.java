package UI;

import javax.swing.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

public class Pprin  extends JFrame {
    private JPanel panel1;
    private JButton inicioButton;
    private JButton anunciosButton;
    private JButton clasesALosQueButton;
    private JButton unirmeAClasesButton;
    private JButton crearClasesButton;

    public Pprin() {
        setLocationRelativeTo(null);
        setVisible(true);
        setSize(600, 400);
        setVisible(true);
    }
        inicioButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                   Inicio abrir = new Inicio();
                   abrir.setVisible(true);
                   this.setVisible(false);
            }
        });
        anunciosButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                     Anuncio abrir = new Anuncio();
                     abrir.setVisible(true);
                     this.setVisible(false);
            }
        });
        clasesALosQueButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                 Clases abrir = new Clases();
                 abrir.setVisible(true);
                 this.setVisible(false);
            }
        });
        unirmeAClasesButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                 Unirme abrir = new Unirme();
                 abrir.setVisible(true);
                 this.setVisible(false);

            }
        });
        crearClasesButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                Crear abrir = new Crear();
                abrir.setVisible(true);
                this.setVisible(false);
            }
        });
    }
}
