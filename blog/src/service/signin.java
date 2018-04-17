package service;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.bottom_code;

/**
 * Servlet implementation class signin
 */
@WebServlet("/signin")
public class signin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public signin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect("signIn.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		try {
			bottom_code.connect();
			String name = bottom_code.getName(email, password);
			//System.out.println(email+" "+password+" "+name);
			if(name!=null)
			{
			request.setAttribute("isIn", "yes");
			request.setAttribute("name", name);
			Cookie uemail = new Cookie("wlsdzyzl_email",email);
			response.addCookie(uemail);
			Cookie uname = new Cookie("wlsdzyzl_name",name);
			response.addCookie(uname);
			request.getRequestDispatcher("home.jsp").forward(request,response);
			}
			else
			{
			request.setAttribute("isIn","no");
			request.getRequestDispatcher("signIn.jsp").forward(request,response);
			}
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			request.setAttribute("isIn","no");
			request.getRequestDispatcher("signIn.jsp").forward(request,response);
		}
		
	
	}

	public static String verifiCookie(Cookie[] c) {
		// TODO Auto-generated method stub
		return null;
	}

}
