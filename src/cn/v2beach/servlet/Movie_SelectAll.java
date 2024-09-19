package cn.v2beach.servlet;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.media.sound.SoftSynthesizer;

import cn.v2beach.dbhelper.MovieListDao;
import cn.v2beach.model.UserLogin;

@SuppressWarnings("serial")
//selectall.v
public class Movie_SelectAll extends HttpServlet {
       
    public Movie_SelectAll() {}
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session=request.getSession();
		
		UserLogin ul = (UserLogin) session.getAttribute("login");
		String authority = ul.getAuthority();
		MovieListDao movieListDao = new MovieListDao();
		Set<UserLogin> userLogins = null; 
		if (authority.equals("root")) {
			System.out.println("root");
			userLogins = movieListDao.selectUsers(0);
		}
		else if (authority.equals("user")) {
			System.out.println("WHAT THE FUCK?!");
		}
		else if (authority.equals("vip")) {
			userLogins = movieListDao.selectUsers(1);
		}
		else {
			System.out.println("WHAT THE FUCK?!");
		}
		session.setAttribute("userLogins", userLogins);
		response.sendRedirect("SelectAllUsers.v");
	}

}
