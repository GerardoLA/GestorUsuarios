package controlador;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import modelo.*;

/**
 * Servlet implementation class ModificarFormulario
 */
@WebServlet("/ModificarUsuarioVent")
public class ModificarUsuarioVent extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarUsuarioVent() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		UsuarioModelo usuarioMod = new UsuarioModelo();
		Usuario usuario = new Usuario();
		
		int id=Integer.parseInt(request.getParameter("id")) ;
		
		ArrayList<Rol>roles=new ArrayList<Rol>();
		try {
			usuario=usuarioMod.getUsuario(id);
			usuarioMod.getConexion().close();
			RolModelo rolMod= new RolModelo();
			roles = rolMod.getRoles();
			rolMod.getConexion().close();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		request.setAttribute("usuario", usuario);
		request.setAttribute("roles", roles);
		
		
		request.getRequestDispatcher("ModificarUsuario.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
