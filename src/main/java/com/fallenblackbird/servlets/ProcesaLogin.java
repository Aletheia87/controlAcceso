package com.fallenblackbird.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fallenblackbird.modelo.Usuario;


@WebServlet("/ProcesaLogin")
public class ProcesaLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ProcesaLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		Usuario usuarioAdmin = new Usuario();
		usuarioAdmin.setUser("Admin");
		usuarioAdmin.setPassword("123456");
		String nombreUsuario = request.getParameter("username");
		String clave = request.getParameter("password");
		HttpSession session;
		String error = "";

		
		if(nombreUsuario.equals(usuarioAdmin.getUser()) && clave.equals(usuarioAdmin.getPassword())) {
			session = request.getSession(true);
			session.setAttribute("nombreUsuario", nombreUsuario);
			response.sendRedirect("IngresoValores.jsp");
			
		}else {
			error= "Usuario y/o password inválida, intente de nuevo.";
			request.setAttribute("error", error);
			request.getRequestDispatcher("Login.jsp").forward(request, response);
		}
		
		
		
	}

}
