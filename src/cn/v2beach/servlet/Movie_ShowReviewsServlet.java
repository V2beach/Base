package cn.v2beach.servlet;

import java.io.IOException;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.v2beach.dbhelper.MovieListDao;
import cn.v2beach.model.Movie_Review;
import cn.v2beach.model.UserLogin;

@SuppressWarnings("serial")
//showreviews.v
public class Movie_ShowReviewsServlet extends HttpServlet {
       
    public Movie_ShowReviewsServlet() {}
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session=request.getSession();
		
		UserLogin userLogin = (UserLogin)session.getAttribute("login");
		String authority = userLogin.getAuthority();
		MovieListDao movieListDao = new MovieListDao();
		Set<Movie_Review> movie_Reviews = null;
		String movieid = (String) session.getAttribute(String.valueOf(userLogin.getId()));
		Pattern p = Pattern.compile("(?i).*?Page(\\d*)");
		Matcher m = p.matcher(movieid);
		m.find();//m.group(1)
		movieid = m.group(1);

		if (authority.equals("user")) {
			movie_Reviews = movieListDao.searchReviews(Integer.parseInt(movieid), 3);
		}
		else {
			movie_Reviews = movieListDao.searchReviews(Integer.parseInt(movieid), -1);
		}
		String moviename = movieListDao.getMoviename(Integer.parseInt(movieid));
		session.setAttribute("movienameOfReview", moviename);
		session.setAttribute("ReviewsOfOneMovie", movie_Reviews);
		response.sendRedirect("ReviewsOfOneMovie.v");
	}

}
