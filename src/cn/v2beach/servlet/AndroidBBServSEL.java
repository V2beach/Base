package cn.v2beach.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.alibaba.fastjson.JSON;

import cn.v2beach.dbhelper.AndroidBBSdb;

/**
 * Servlet implementation class AndroidBBServSEL
 */
@WebServlet("/AndroidBBServSEL")
public class AndroidBBServSEL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AndroidBBServSEL() {
        super();
        // TODO Auto-generated constructor stub
    }

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");

		AndroidBBSdb androidBBSdb = new AndroidBBSdb();
		
		PrintWriter out = response.getWriter();
		String jsonStr = JSON.toJSONString(androidBBSdb.getAllBBS());
		out.print(jsonStr);
		
		out.flush();
        out.close();
	}

}
