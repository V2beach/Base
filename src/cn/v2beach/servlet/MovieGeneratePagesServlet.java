package cn.v2beach.servlet;

import java.io.IOException;
import java.util.Iterator;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.v2beach.dbhelper.MovieListDao;
import cn.v2beach.model.Movie;
import cn.v2beach.utility.MovieGenerateNewPage;

@SuppressWarnings("serial")
//MovieGeneratePages.v!
public class MovieGeneratePagesServlet extends HttpServlet {
       
    public MovieGeneratePagesServlet() {}
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session=request.getSession();
		MovieListDao movieListDao = new MovieListDao();
		
		int position = movieListDao.getPagesGenerationStartPosition();
		int count = 0;
		
		String path = request.getSession().getServletContext().getRealPath("");//淦，他会生成在tomcat里面，而不是项目里面，所以先生成一遍吧。
		String filePath = "MoviePages/WebContent/V2beach1024/Views-JavaServerPages/Movie_Pages/ATEMPLATE.jsp";
        String disrPath = "MoviePages/WebContent/V2beach1024/Views-JavaServerPages/Movie_Pages/";
        String fileName = "Movie_Page";
        
		Set<Movie> movieSet = movieListDao.getLatestMoives(-1);
		Iterator<Movie> iterator = movieSet.iterator();
		MovieGenerateNewPage movieGenerateNewPage = new MovieGenerateNewPage();
		Movie movie = null;
		while (iterator.hasNext() && count < position) {
			movie = iterator.next();
			count++;
		}
		while (iterator.hasNext() && count < 4) {
			movie = iterator.next();
			fileName = fileName + count;
			movieGenerateNewPage.makeJsp(filePath, disrPath, fileName, movie);
			count++;
		}
		//statistics = count
		System.out.println(count);
		
		movieSet = movieListDao.getLatestMoives(58);
		session.setAttribute("indexMovies", movieSet);
		response.sendRedirect("MovieIndexJsp.v");//可以改成ALL那个页面。
	}

}
