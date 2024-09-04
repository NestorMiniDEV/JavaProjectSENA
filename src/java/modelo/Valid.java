package modelo;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class Valid {
	
	 PreparedStatement ps; //Ejecuta una consulta o una sentencia SQL
	 ResultSet rs; //Objeto que tendrá la capacidad de obtener la respuesta desde la bd
	 Connection connet; //Interfaz que permite establecer la conexión con la bd
	 Conexion cn = new Conexion(); // Creamos una variable tipo Conexion 
	
	public int valid(User user) {
		
		int count = 0;
		String sql = "SELECT * FROM cliente WHERE id = ? AND contrasena = ?";
		
		try {
			
			connet = cn.conexion();
			ps = connet.prepareStatement(sql);
			ps.setString(1, user.getId());
			ps.setString(2, user.getContrasena());
			rs = ps.executeQuery();
			
			while(rs.next()) {
				count++;
				user.setId(rs.getString("id"));
				user.setContrasena(rs.getString("contrasena"));
			}
			
			if(count >= 1) {
				return 1;
			} else {
				return 0;
			}
			
		} catch (SQLException ex) {
			
		}
		
		return 0;
	}
	
	public int save (User user) {
		
		String sql = "INSERT INTO cliente (id, nombre, apellido, fechaNacimiento, email, telefono, contrasena) VALUE (?, ?, ?, ?, ?, ?, ?)";
		
		connet = cn.conexion();
		
		try {
			
			ps = connet.prepareStatement(sql);
			
		} catch (SQLException ex) {
			
			Logger.getLogger(Valid.class.getName()).log(Level.SEVERE, null, ex);
		
		}
		
		try {
			
			ps.setString(1, user.getId());
			
		} catch (SQLException ex) {
			
			Logger.getLogger(Valid.class.getName()).log(Level.SEVERE, null, ex);
			
		}
		
		try {
			
			ps.setString(2, user.getNombre());
			
		} catch (SQLException ex) {
			
			Logger.getLogger(Valid.class.getName()).log(Level.SEVERE, null, ex);
			
		}
		
		try {
			
			ps.setString(3, user.getApellido());
			
		} catch (SQLException ex) {
			
			Logger.getLogger(Valid.class.getName()).log(Level.SEVERE, null, ex);
			
		}
		
		try {
			
			ps.setString(4, user.getfechaNacimiento());
			
		} catch (SQLException ex) {
			
			Logger.getLogger(Valid.class.getName()).log(Level.SEVERE, null, ex);
			
		}
		
		try {
			
			ps.setString(5, user.getCorreo());
			
		} catch (SQLException ex) {
			
			Logger.getLogger(Valid.class.getName()).log(Level.SEVERE, null, ex);
			
		}
		
		try {
			
			ps.setString(6, user.getTelefono());
			
		} catch (SQLException ex) {
			
			Logger.getLogger(Valid.class.getName()).log(Level.SEVERE, null, ex);
			
		}
		
		try {
			
			ps.setString(7, user.getContrasena());
			
		} catch (SQLException ex) {
			
			Logger.getLogger(Valid.class.getName()).log(Level.SEVERE, null, ex);
			
		}
		
		try {
			
			ps.execute();
		} catch (SQLException ex) {
			
			Logger.getLogger(Valid.class.getName()).log(Level.SEVERE, null, ex);
			
		}
		
		return 0;
	}
	
	public int delete (User user) {
		
		String sql = "DELETE FROM cliente WHERE id = ? ";
		
		connet = cn.conexion();
		
		try {
			ps = connet.prepareStatement(sql);
			ps.setString(1, user.getId());
			ps.execute();
			
		} catch (SQLException ex) {
			
			Logger.getLogger(Valid.class.getName()).log(Level.SEVERE, null, ex);
			
		}
		
		return 0;
	}
	
	public int update (User user) {
		

		String sql = "UPDATE cliente SET nombre = ?, apellido = ?, fechaNacimiento = ?,  email = ? , telefono = ?, contrasena = ?  WHERE id = ?";
		
		connet = cn.conexion();		
		//Asignar el valor ? a un parametro de User
		
		try {
			
			ps = connet.prepareStatement(sql);
			ps.setString(1, user.getNombre());
			ps.setString(2, user.getApellido());
			ps.setString(3, user.getfechaNacimiento());
			ps.setString(4, user.getCorreo());
			ps.setString(5, user.getTelefono());
			ps.setString(6, user.getContrasena());
			ps.setString(7, user.getId());
                        			
			boolean numUpd = ps.execute(); //ps.execute() tomará un valor booleno para realizar un executeUpdate (false) o executeQuery (true)
			if (!numUpd) {
				return 1;
			} else {
				return 0;
			}
			
		} catch (SQLException ex) {
			
			Logger.getLogger(Valid.class.getName()).log(Level.SEVERE, null, ex);
		}
		
		return 0;
		
	}
	
	public List<User> listUser(){
		List<User> list = new ArrayList<>();
		try {
			String sql = "SELECT * FROM cliente";
			
			connet = cn.conexion();
			ps = connet.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while (rs.next()) {
				String documento = rs.getString("id");
				String nombre = rs.getString("nombre");
				String apellido = rs.getString("apellido");
				String fecha = rs.getString("fechaNacimiento");
				String correo = rs.getString("email");
				String telefono = rs.getString("telefono");
				String password = rs.getString("contrasena");
				
				User users = new User(documento, nombre, apellido, fecha, correo, telefono, password);
				
				list.add(users);
			}
			
			return list;
			
		}catch (SQLException e) {
			
		}
		return null;
	}

}
