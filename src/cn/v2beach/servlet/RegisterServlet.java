package cn.v2beach.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.v2beach.dbhelper.UserRegisterHelper;
import cn.v2beach.dbhelper.WrongInputException;

public class RegisterServlet extends HttpServlet {
	
	public RegisterServlet() {}
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String nickname=request.getParameter("nickname");
		if(new UserRegisterHelper().signUp(username, password, nickname)){
			response.sendRedirect("Index.v");
		}
		else
			response.sendRedirect("Signup.register");
	}
}
