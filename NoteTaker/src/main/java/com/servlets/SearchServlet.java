package com.servlets;

import java.io.IOException; 
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.entities.Note;
import com.helper.FactoryProvider;

/**
 * Servlet implementation class SearchServlet
 */
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String search = request.getParameter("search");
		System.out.println(search);
		Session session= FactoryProvider.getFactory().openSession();
		Note note= new Note();
		System.out.println(note.getTitle().equals(search));
		if(note.getTitle().equals(search))
		{
			response.sendRedirect("search.jsp");
		}
		
		
		
	}

	

}
