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
import dao.signIn;

/**
 * Servlet implementation class editor
 */
@WebServlet("/editor")
public class editor extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public editor() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			bottom_code.connect();
			Cookie c[] = request.getCookies();
			String inf[] = null;
			if((inf = signIn.verifiCookie(c))!=null)
			{
			request.setAttribute("isIn", "yes");
			request.setAttribute("email",inf[0]);
			request.setAttribute("name", inf[1]);
			request.setAttribute("isRoot", inf[2]);
			}
			Cookie uemail = new Cookie("wlsdzyzl_email",inf[0]);
			response.addCookie(uemail);
			Cookie uname = new Cookie("wlsdzyzl_name",inf[1]);
			response.addCookie(uname);

			bottom_code.close();
			if(inf[2].equals("yes"))
			request.getRequestDispatcher("/WEB-INF/editor.jsp").forward(request, response);
			else request.getRequestDispatcher("/home.jsp").forward(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
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
