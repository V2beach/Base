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
//addreview.v
public class Movie_AddReview extends HttpServlet {
       
    public Movie_AddReview() {}
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session=request.getSession();
		
		MovieListDao movieListDao = new MovieListDao();
		int userid = ((UserLogin)session.getAttribute("login")).getId();
		movieListDao.addReview(userid, 
				Integer.parseInt(request.getParameter("movieid")), 
				request.getParameter("content"), 
				Integer.parseInt(request.getParameter("score")));
		response.sendRedirect("showreviews.v");
	}

}
