package BDfx;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class BdConection {
    Connection conectar = null;
    String usuario = "postgres";
    String password = "password";
    String bd = "postgres";
    String ip = "localhost";
    String puerto = "5432";
    String cadena = "jdbc:postgresql://"+ip+":"+ puerto +"/"+ bd;

    public Connection establecerConexion(){
        try {
            Class.forName("org.postgresql.Driver");
            conectar = DriverManager.getConnection(cadena, usuario, password);
            System.out.println("Se conecto correctamente a la Base de Datos");
        }catch (Exception e){
            System.out.println("No se logro conectar a la Base de Datos");
        }
        return conectar;
        }
}