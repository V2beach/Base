package cn.v2beach.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.v2beach.dbhelper.UserRegisterHelper;

/**
 * Servlet implementation class AndroidSignup
 */
@WebServlet("/AndroidSignup")
public class AndroidSignup extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AndroidSignup() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		String nickname=request.getParameter("nickname");
		
		PrintWriter out = response.getWriter();
		if (new UserRegisterHelper().signUp(username, password, nickname)) {
			out.println("OK");
		}
		else {
			out.println("Wrong");
		}
		out.flush();
        out.close();
	}

}
