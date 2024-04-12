package UI;

import BDfx.BdConection;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.security.SecureRandom;
import java.sql.Connection;

public class CrearClase extends JFrame {

    private JTextField txtasignatura;
    private JButton btncrear;
    private JPanel crearClase;
    private JTextField txtaula;
    private JTextField txtNomClase;
    private static JFrame clase ;
    private String contrasenia = new String(generarPassword());



    public CrearClase() {

        btncrear.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                CrearClase objcrearClase = new CrearClase();
               // objcrearClase.crearClase(txtNomClase.getText(), txtaula.getText(),txtasignatura.getText(),contrasenia);

                Materia materia = new Materia();
                materia.setNomClase("Funciona");
                materia.inicioMateria(materia);
                clase.setVisible(false);

            }
        });
    }

    public static void main(String[] args) {

                JFrame frame = new JFrame("CrearClase");
                frame.setContentPane(new CrearClase().crearClase);
                frame.setSize(600,600);
                frame.setLocationRelativeTo(null);
                frame.setVisible(true);
                clase = frame;

    }

    /*

    public void crearClase(String nombre, String aula, String asignatura, String contrasenia){

        BdConection con = new BdConection();
        try {
            Connection conexion = con.establecerConexion();
            java.sql.Statement st = conexion.createStatement();
            String sql="insert into BD(nombre,costo,posicion) values('\"+nombre+\"','\"+costo+\"','\"+posicion+\"');";
            st.execute(sql);
            st.close();
            System.out.println("Conexion exitosa");
        }catch (Exception e){
            System.err.println(e);
        }
    }
    */
    public char[] generarPassword(){

        String caracter = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
        SecureRandom random = new SecureRandom();
        char[] password = new char[8];
        for(int i=0;i<password.length;i++){
            password[i] = caracter.charAt(random.nextInt(caracter.length()));
        }
        return password;

    }



}

