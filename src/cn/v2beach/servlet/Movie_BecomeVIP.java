package cn.v2beach.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.v2beach.dbhelper.MovieListDao;
import cn.v2beach.model.UserLogin;

@SuppressWarnings("serial")
//MovieBecomeVIP.v
public class Movie_BecomeVIP extends HttpServlet {
       
    public Movie_BecomeVIP() {}
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session=request.getSession();
		
		UserLogin ul = (UserLogin) session.getAttribute("login");
		if (ul.getAuthority().equals("root")) {//改为VIP
			MovieListDao movieListDao = new MovieListDao();
			movieListDao.user2Vip(Integer.parseInt(request.getParameter("user2vip")));
			response.sendRedirect("selectall.v");
		}
		else {
			response.sendRedirect("Archives.v");
		}
	}

}
