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
 * Servlet implementation class AndroidBBServ
 */
@WebServlet("/AndroidBBServADD")
public class AndroidBBServADD extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AndroidBBServADD() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		PrintWriter out = response.getWriter();
		if (true) {
			out.println("OK");
		}
		else {
			out.println("Wrong");
		}
		out.flush();
        out.close();
	}

}
