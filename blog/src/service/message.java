package service;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Message;
import dao.MessageOp;
import dao.bottom_code;
import dao.signIn;

/**
 * Servlet implementation class message
 */
@WebServlet("/message")
public class message extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public message() {
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
			request.setAttribute("isOld", "yes");
			request.setAttribute("email",inf[0]);
			request.setAttribute("name", inf[1]);
			request.setAttribute("isRoot", inf[2]);
			}
			Cookie uemail = new Cookie("wlsdzyzl_email",inf[0]);
			response.addCookie(uemail);
			Cookie uname = new Cookie("wlsdzyzl_name",inf[1]);
			response.addCookie(uname);
			ArrayList<Message> messages = MessageOp.getAllMessage();
			request.setAttribute("messages", messages);
			request.setAttribute("count", messages.size());
			bottom_code.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		request.getRequestDispatcher("message.jsp").forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String content = request.getParameter("content");
		String r = request.getParameter("reply");
		String []inf = null;
		
		int reply = -1;
		if(r!=null && !r.equals(""))
			reply = Integer.parseInt(r);
		try {
			bottom_code.connect();
			Cookie c[] = request.getCookies();
			if((inf = signIn.verifiCookie(c))!=null)
			{
			request.setAttribute("isOld", "yes");
			request.setAttribute("email", inf[0]);
			request.setAttribute("name", inf[1]);
			request.setAttribute("isRoot", inf[2]);
			}
			
			MessageOp.addMessage(name,email,content,reply);
			Cookie uemail = new Cookie("wlsdzyzl_email",email);
			response.addCookie(uemail);
			Cookie uname = new Cookie("wlsdzyzl_name",name);
			response.addCookie(uname);
			ArrayList<Message> messages = MessageOp.getAllMessage();
			request.setAttribute("messages", messages);
			request.setAttribute("count", messages.size());
			bottom_code.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		request.getRequestDispatcher("message.jsp").forward(request, response);
	}

}
