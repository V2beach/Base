package cn.v2beach.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.v2beach.model.UserLogin;

@SuppressWarnings("serial")
//InfoYourself.v
public class Movie_InfoYourselfServlet extends HttpServlet {
       
    public Movie_InfoYourselfServlet() {}
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session=request.getSession();
		
		UserLogin ul = (UserLogin) session.getAttribute("login");
		String authority = ul.getAuthority();
		if (authority.equals("root")) {
			response.sendRedirect("Rootinfo.v");
		}
		else if (authority.equals("user")) {
			response.sendRedirect("Userinfo.v");
		}
		else if (authority.equals("vip")) {
			response.sendRedirect("VIPinfo.v");
		}
		else {
			System.out.println("WHAT THE FUCK?!");
		}
	}

}
