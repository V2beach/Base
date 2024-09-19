package cn.v2beach.servlet;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.v2beach.dbhelper.MovieListDao;
import cn.v2beach.model.Movie;

@SuppressWarnings("serial")
//MovieIndex.v!
public class MovieJumpToIndexServlet extends HttpServlet {
       
    public MovieJumpToIndexServlet() {}
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session=request.getSession();
		MovieListDao movieListDao = new MovieListDao();
		Set<Movie> movieSet = movieListDao.getLatestMoives(58);
		session.setAttribute("indexMovies", movieSet);
		response.sendRedirect("MovieIndexJsp.v");
	}

}
