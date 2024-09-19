package cn.v2beach.servlet;

import java.io.IOException;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.v2beach.dbhelper.MusicListDao;
import cn.v2beach.model.Music;

public class MusicListTypeToggleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public MusicListTypeToggleServlet() {
    	
    }
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session=request.getSession();
		MusicListDao musicListDao=new MusicListDao();
		
		Set<Music> musicSet=musicListDao.searchUncompleted();
		Music music=musicSet.iterator().next();
		musicListDao.delUncompleted(							//Bug
				music.getUserid(), music.getSongname(), music.getNickname(), music.getSongdate());
		session.setAttribute("uncompletedMusicSet", musicListDao.searchUncompleted());
		session.setAttribute("completedMusicSet", musicListDao.searchCompleted());
		
		session.setAttribute("JumpType", "Robot");
		session.setAttribute("musicName", music.getSongname());
		request.getRequestDispatcher("/Music.v").forward(request, response);
    }
}
