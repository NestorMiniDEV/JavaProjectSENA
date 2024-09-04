package modelo;

public class User {
	
	String id;
	String nombre;
	String apellido;
	String fechaNacimiento;
	String correo;
	String telefono;
	String contrasena;

	public User() {
		
	}
	
	public User(String id, String nombre, String apellido, String fechaNacimiento, String correo, String telefono, String contrasena) {
		this.id = id;
		this.nombre = nombre;
		this.apellido = apellido;
		this.fechaNacimiento = fechaNacimiento;
		this.correo = correo;
		this.telefono = telefono;
		this.contrasena = contrasena;
	}
	
	//Setters
	
	public void setId(String id)
	{
		this.id = id;
	}
	
	public void setNombre(String nombre )
	{
		this.nombre = nombre;
	}
	
	public void setApellido(String apellido )
	{
		this.apellido = apellido;
	}
	
	public void setFechaNacimiento(String fechaNacimiento )
	{
		this.fechaNacimiento = fechaNacimiento;
	}

	public void setCorreo(String correo)
	{
		this.correo = correo;
	}
	
	public void setTelefono(String telefono)
	{
		this.telefono = telefono;
	}
	
	public void setContrasena(String contrasena)
	{
		this.contrasena = contrasena;
	}
	
	
	//Getters
	
	public String getId ()
	{
		return id;
	}
	
	public String getNombre ()
	{
		return nombre;
	}
	
	public String getApellido ()
	{
		return apellido;
	}
	
	public String getfechaNacimiento ()
	{
		return fechaNacimiento;
	}
	
	public String getCorreo ()
	{
		return correo;
	}
	
	public String getTelefono ()
	{
		return telefono;
	}
	
	public String getContrasena ()
	{
		return contrasena;
	}
	

}
