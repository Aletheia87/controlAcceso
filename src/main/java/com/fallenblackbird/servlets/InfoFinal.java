package com.fallenblackbird.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/InfoFinal")
public class InfoFinal extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	
    public InfoFinal() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String nombre = request.getParameter("nombre");
		String empresa = request.getParameter("empresa");
		String rut = request.getParameter("rut");
		String direccion = request.getParameter("direccion");
		String ciudad = request.getParameter("ciudad");
		String pais = request.getParameter("pais");
		
		String cant1 = request.getParameter("cant1");
		String cant2 = request.getParameter("cant2");
		String cant3 = request.getParameter("cant3");
		String cant4 = request.getParameter("cant4");
		String cant5 = request.getParameter("cant5");
		
		request.setAttribute("nombre", nombre);
		request.setAttribute("empresa", empresa);
		request.setAttribute("rut", rut);
		request.setAttribute("direccion", direccion);
		request.setAttribute("ciudad", ciudad);
		request.setAttribute("pais", pais);

		int valor1 = 0;
		int valor2 = 0;
		int valor3 = 0;
		int valor4 = 0;
		int valor5 = 0;
		
		if (cant1 != "") {
			valor1 = Integer.parseInt(cant1) * 120000;
			request.setAttribute("valor1", valor1);
		} else
			request.setAttribute("valor1", "");
		
		if (cant2 != "") {
			valor2 = Integer.parseInt(cant2) * 1700000;
			request.setAttribute("valor2", valor2);
		} else
			request.setAttribute("valor2", "");
		
		if (cant3 != "") {
			valor3 = Integer.parseInt(cant3) * 760000;
			request.setAttribute("valor3", valor3);
		} else
			request.setAttribute("valor3", "");
		
		if (cant4 != "") {
			valor4 = Integer.parseInt(cant4) * 2300000;
			request.setAttribute("valor4", valor4);
		} else
			request.setAttribute("valor4", "");
		
		if (cant5 != "") {
			valor5 = Integer.parseInt(cant5) * 10000;
			request.setAttribute("valor5", valor5);
		} else
			request.setAttribute("valor5", "");
		
		
		int subtotal = valor1 + valor2 + valor3 + valor4 + valor5;
		int total = (subtotal - (subtotal*10/100));
		request.setAttribute("subtotal", subtotal);
		request.setAttribute("total", total);

		
		request.getServletContext().getRequestDispatcher("/Factura.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
