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

import dao.Article;
import dao.ArticleOp;
import dao.bottom_code;
import dao.signIn;

/**
 * Servlet implementation class article
 */
@WebServlet("/article")
public class article extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public article() {
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
			String aid = request.getParameter("aid");
			
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
			if(aid!=null&&!aid.equals(""))
			{
				request.setAttribute("article", ArticleOp.getAnArticle(Integer.parseInt(aid)));
				request.getRequestDispatcher("article.jsp").forward(request, response);
			}
			else
			{
			ArrayList<Article> articles = ArticleOp.getAllArticle();
			request.setAttribute("articles", articles);
			request.setAttribute("count", articles.size());
			request.getRequestDispatcher("articleList.jsp").forward(request, response);
			}
			bottom_code.close();
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
		request.setCharacterEncoding("utf-8");
		String title = request.getParameter("title");
		String ftext = request.getParameter("ftext");
		String content = request.getParameter("content");
		String t = request.getParameter("tag");
		String inf[] = null;
		int tag = -1;
		if(t!=null && !t.equals(""))
			tag = Integer.parseInt(t);
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
			
			ArticleOp.addArticle(title, content, ftext, tag);
			Cookie uemail = new Cookie("wlsdzyzl_email",inf[0]);
			response.addCookie(uemail);
			Cookie uname = new Cookie("wlsdzyzl_name",inf[1]);
			response.addCookie(uname);
			ArrayList<Article> articles = ArticleOp.getAllArticle();
			request.setAttribute("articles", articles);
			request.setAttribute("count", articles.size());
			bottom_code.close();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		request.getRequestDispatcher("articleList.jsp").forward(request, response);
	}

}
