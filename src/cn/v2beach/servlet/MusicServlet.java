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
import cn.v2beach.model.UserLogin;
import cn.v2beach.utility.MusicUtil;

public class MusicServlet extends HttpServlet {
	boolean type=true;
	private static final long serialVersionUID = 1L;
    public MusicServlet() {}
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		HttpSession session=request.getSession();
		String song=(String) request.getParameter("musicName");
		if (((String)session.getAttribute("JumpType")==null
				?""
				:(String)session.getAttribute("JumpType")).equals("Robot")) {
			song=(String) session.getAttribute("musicName");
			session.setAttribute("JumpType",null);
			type=false;
		}
		MusicListDao musicListDao=new MusicListDao();
		MusicUtil musicUtil=new MusicUtil();
		
		//Music url, Api.
		System.out.println(musicListDao.getTopOfUncompletedMusic());
		Music music=musicListDao.getTopOfUncompletedMusic();
		String musicUrl=musicUtil.getMusicAddress(music.getSongname());
		session.setAttribute("musicUrl", musicUrl);
		System.out.println(song+"  "+musicUrl);
		
		//UncompletedMusic, Database.
		UserLogin login=(UserLogin) session.getAttribute("login");
		Integer userid=login.getId();
		String nickname=login.getNickname();
		String songdate=(String) session.getAttribute("songdate");
		songdate=songdate.replaceFirst("年", "/");
		songdate=songdate.replaceFirst("月", "/");
		songdate=songdate.replaceFirst("日", "");
		System.out.println(userid+" "+ song+" "+ nickname+" "+ songdate);
		
		if (type)
			musicListDao.addUncompleted(userid, song, nickname, songdate);
		type=true;
		Set<Music> uncompletedMusicSet=musicListDao.searchUncompleted();
//		System.out.println(uncompletedMusicSet);
		session.setAttribute("uncompletedMusicSet", uncompletedMusicSet);
		
		response.sendRedirect(request.getContextPath()+"/FMradio/Model-3/index.jsp#filter=.blog%3Anot(.blog3),+.post3");
    }
}
