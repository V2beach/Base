package cn.v2beach.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.v2beach.dbhelper.UserLoginHelper;
import cn.v2beach.model.UserLogin;

@SuppressWarnings("serial")
public class IndexServlet extends HttpServlet {
       
    public IndexServlet() {}
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.sendRedirect("Index.v");
	}
}
