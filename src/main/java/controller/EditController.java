package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bo.ContactsBo;

/**
 * Servlet implementation class EditController
 */
public class EditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EditController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    ContactsBo lbo = new ContactsBo();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String firstName = request.getParameter("firstName");
			String lastName = request.getParameter("lastName");
			String birthDate = request.getParameter("birthDate");
			String description = request.getParameter("description");
			String id = request.getParameter("id");
			
			if(request.getParameter("edit") != null) {
				int n = lbo.Sua(firstName, lastName, birthDate, description,Integer.parseInt(id));
				if(n == 0) {
					request.setAttribute("ktnhap", 0);
					
					
				}
			}else if(request.getParameter("exit") != null) {
				RequestDispatcher rd = request.getRequestDispatcher("ContactsController");
				rd.forward(request, response);
			}  
			RequestDispatcher rd = request.getRequestDispatcher("ContactsController");
			rd.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
