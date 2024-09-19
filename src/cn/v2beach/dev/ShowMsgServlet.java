package cn.v2beach.dev;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ShowMsgServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ShowMsgServlet() {}
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	StuMsgDao stuMsgDao=new StuMsgDao();
    	String choice=null;
    	HttpSession session=request.getSession();
    	choice=request.getParameter("choice");
    	session.setAttribute("stuSet", stuMsgDao.searchAll(choice));
    	response.sendRedirect("StuMsgShow.v");
    }
}
