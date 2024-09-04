package controlador;

//import jakarta.servlet.RequestDispatcher;
import java.io.IOException;
//import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
//import javax.swing.JOptionPane;
import modelo.User;
import modelo.Valid;


public class Controller extends HttpServlet {
	//private static final long serialVersionUID = 1L;
       
   
	Valid valid = new Valid();
	User user = new User();
        User usuarioRegistrado = null;
        List<User> listUser = valid.listUser();
	int count = 0;
	int numUpd = 0;
	
	protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        String action = request.getParameter("action");
        
        switch(action)
	        {
	        case "ingresar" -> {
                    String id = request.getParameter("idUser");
                    String password = request.getParameter("passwordUser");
                    
                    user.setId(id);
                    user.setContrasena(password);
                    
                    count = valid.valid(user);
                    
                    if(count >= 1) {
                        request.getSession().setAttribute("id", id);
                        request.getSession().setAttribute("password", password);
                        
                        //request.setAttribute("Lista", listUser);
                        
                        for(User persona : listUser){          //forEach para listUser
                            if(persona.getId().equals(id)){    //asigna los valores de User a usuarioRegistrado, pero si el valor de id listUser sea diferente
                                usuarioRegistrado = persona;  //no va a realizar la asignación.
                            }
                        }
                        
                        if(usuarioRegistrado != null){
                            request.setAttribute("usuario", usuarioRegistrado);  //cuando ingrese "usuario" en el código de jsp tiene que aparece unicamente la info de User que concuerde el id.
                        }
                        
                        request.getRequestDispatcher("main.jsp").forward(request, response);
                    } else {
                        
                        request.setAttribute("errorMessage", "User no exists.");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                }
	        	
	        case "registrar" -> {
                    String newId = request.getParameter("newIdUser");
                    String newName = request.getParameter("newNameUser");
                    String newLastName = request.getParameter("newLastNameUser");
                    String newEmail = request.getParameter("newEmailUser");
                    String newDate = request.getParameter("newDateUser");
                    String newNumber = request.getParameter("newNumberUser");
                    String newPassword = request.getParameter("newPasswordUser");
                    
                    user.setId(newId);
                    user.setNombre(newName);
                    user.setApellido(newLastName);
                    user.setCorreo(newEmail);
                    user.setFechaNacimiento(newDate);
                    user.setTelefono(newNumber);
                    user.setContrasena(newPassword);
                    
                    count = valid.valid(user); //validar si existe una persona existente, si no genera la solicitud para registrar usuario.
                    
                    if(count >= 1 ) {
                        request.setAttribute("errorMessage", "Exists user.");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    } else {
                        
                        count = valid.save(user);
                        request.setAttribute("passedMessage", "User created.");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                    }
                }
                        
                case "delete" -> request.getRequestDispatcher("delete.jsp").forward(request, response);
	        	
	        case "ELIMINAR" -> {
                    String removeUser = request.getParameter("removeUser");
                    
                    user.setId(removeUser);
                    
                    count = valid.valid(user);
                    
                    if(count >= 1) {
                        
                        valid.delete(user);
                        request.setAttribute("accountDeleted", "User deleted.");
                        request.getRequestDispatcher("index.jsp").forward(request, response);
                        
                    }
                }
                        
                case "update" -> request.getRequestDispatcher("update.jsp").forward(request, response);
	        	
	        case "ACTUALIZAR" -> {
                    String confirmId = request.getParameter("confirmId");
                    String changeName = request.getParameter("changeName");
                    String changeLastName = request.getParameter("changeLastName");
                    String changeDate = request.getParameter("changeDate");
                    String changeEmail = request.getParameter("changeEmail");
                    String changeNumber = request.getParameter("changeNumber");
                    String changePassword = request.getParameter("changePassword");
                    
                    user.setId(confirmId);
                    user.setNombre(changeName);
                    user.setApellido(changeLastName);
                    user.setFechaNacimiento(changeDate);
                    user.setCorreo(changeEmail);
                    user.setTelefono(changeNumber);
                    user.setContrasena(changePassword);
                    
                    numUpd = valid.update(user);
                    
                    /*Solo se puede tener en cuenta el valor booleano de prepareStatement.execute() */
                    
                    if(numUpd >= 1) {
                        /*request.getSession().setAttribute("changeName", changeName);
                        request.getSession().setAttribute("changeLastName", changeLastName);
                        request.getSession().setAttribute("changeDate", changeDate);
                        request.getSession().setAttribute("changeEmail", changeEmail);
                        request.getSession().setAttribute("changeNumber", changeNumber);
                        request.getSession().setAttribute("changePassword", changePassword);*/
                        
                        request.setAttribute("accountUpdated", "Information updated");
                        request.getRequestDispatcher("main.jsp").forward(request, response);
                    }
                }
                       
                default -> request.getRequestDispatcher("index.jsp").forward(request, response);
	        	
	        }
        
        }
	
	@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
