package cn.v2beach.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.v2beach.dbhelper.UserLoginHelper;
import cn.v2beach.model.UserLogin;

/**
 * Servlet implementation class AndroidSignin
 */

//是我还不够理解get post吗？

@WebServlet("/AndroidSignin")
public class AndroidSignin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     * 
     */
    public AndroidSignin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		//http://localhost:8081/Base/AndroidSignin?username=V2beach&password=V2beach
		//一次成功，我真他妈是个天才。
		
		//取出URL中的账号密码参数
        String username = request.getParameter("username");
        String passWord = request.getParameter("passWord");
        String nickname = request.getParameter("nickname");
        UserLoginHelper userLoginHelper=new UserLoginHelper();
        //验证过程
        if (userLoginHelper.checkLogin(request.getParameter("username"), request.getParameter("password")) != null) {
            out.println("OK");
        }else {
            out.println("Wrong");
        }
		
        out.flush();
        out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
        //取出URL中的账号密码参数
        String username = request.getParameter("username");
        String passWord = request.getParameter("passWord");
        String nickname = request.getParameter("nickname");
        UserLoginHelper userLoginHelper=new UserLoginHelper();
        //验证过程
        if (userLoginHelper.checkLogin(request.getParameter("username"), request.getParameter("password")) != null) {
            out.println("OK");
        }else {
            out.println("Wrong");
        }

        out.flush();
        out.close();
	}

}
