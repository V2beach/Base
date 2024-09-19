package cn.v2beach.dev;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StuMsgServlet extends HttpServlet {
    public StuMsgServlet() {}
    
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		Student stu=
				new Student(
						request.getParameter("stuname"),
						request.getParameter("stucode"),
						request.getParameter("stumajor"),
						request.getParameter("stugpa"),
						request.getParameter("stupwd"));
		System.out.println(stu.toString());
		StuMsgDao stuMsgDao = new StuMsgDao();
		if (stuMsgDao.checkCode(stu.getStucode(), stu.getStuname(), stu.getStumajor(), stu.getStugpa(), stu.getStupwd()))
			response.sendRedirect("StuMsgSuccess.v");
		else
			response.sendRedirect("StuMsgError.v");
	}

}
