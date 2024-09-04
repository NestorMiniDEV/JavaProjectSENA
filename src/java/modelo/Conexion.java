package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.jasper.tagplugins.jstl.core.Url;
import java.sql.*;

public class Conexion {
	
	String user = "root";
	String password = "";
	String url = "jdbc:mysql://localhost:3306/test";
	Connection conex; //Creamos un objeto tipo conexión
	Statement statement; //Creamos un objeto tipo statement que permita ejecutar sentencias sql a traves de la coenxión establecida
	ResultSet rs; //apuntador de tipo Cursor que está direccionado a la primera posición de toda la estructura tabular que está referenciando
	String driver = "com.mysql.cj.jdbc.Driver"; //Cargamos el controlador
	
	//método conexion tipo connection 
	
	public Connection conexion() {
		
		try {
			Class.forName(driver);
			
			try {
				conex = DriverManager.getConnection(url, user, password);
			} catch (SQLException ex) {
				Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
			}
			
		} catch (ClassNotFoundException ex) {
			
			Logger.getLogger(Conexion.class.getName()).log(Level.SEVERE, null, ex);
		}
		
		return conex; 
	}

}
