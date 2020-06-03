package Conexion;

import java.sql.*;
import javax.swing.*;
/**
 *
 * @author GIANELA
 */

public class conectar {
    
    private static Connection conect;
    private static final String driver  = "com.mysql.jdbc.Driver";
    private static final String user = "root";
    private static final String password = "root";
    private static  String url = "jdbc:mysql://localhost/bd_agencia_viajes?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC";
    
    
    

   public Connection conexion()
    {
         conect = null;
     try{
            Class.forName(driver);
            conect = DriverManager.getConnection(url,user ,password );
            
            if(conect != null) {
                System.out.println("Conexion establecida ");
            }
        }catch (ClassNotFoundException | SQLException e){
            System.out.println("Conexion no establecida ");
        }
      return conect;
     }
   
        public void desconectar(){
            conect = null;
            if(conect==null){
                System.out.println("Conexion terminada");
        }
     }
      
}
