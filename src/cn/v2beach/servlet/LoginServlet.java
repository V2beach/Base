package cn.v2beach.servlet;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.v2beach.dbhelper.MusicListDao;
import cn.v2beach.dbhelper.UserLoginHelper;
import cn.v2beach.dbhelper.WrongInputException;
import cn.v2beach.model.Music;
import cn.v2beach.model.UserLogin;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet {
       
    public LoginServlet() {}
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		UserLoginHelper userLoginHelper=new UserLoginHelper();
		HttpSession session=request.getSession();
		UserLogin ul=(UserLogin)session.getAttribute("login");
		if (ul==null) {
			ul=userLoginHelper.checkLogin(request.getParameter("username"), request.getParameter("password"));
		}
		if (ul!=null) {
			session.setAttribute("login", ul);
			session.setAttribute("friend", request.getParameter("friend"));
			
			MusicListDao musicListDao=new MusicListDao();
			Set<Music> uncompletedMusicSet=musicListDao.searchUncompleted();
			Set<Music> completedMusicSet=musicListDao.searchCompleted();
			session.setAttribute("uncompletedMusicSet", uncompletedMusicSet);
			session.setAttribute("completedMusicSet", completedMusicSet);
			
			response.sendRedirect("Base.index");
		}
		else {
//			response.setHeader("refresh", "0");
			response.sendRedirect("Index.index");
		}
	}

}
