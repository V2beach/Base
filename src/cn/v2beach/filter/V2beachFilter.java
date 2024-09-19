package cn.v2beach.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class V2beachFilter implements Filter {

    public V2beachFilter() {}
    public void init(FilterConfig fConfig) throws ServletException {}
    public void destroy() {}
	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//Code Filter
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		//Authority Filter
		
		
		//Session Filter
		HttpSession httpSession=((HttpServletRequest)request).getSession();
//		System.out.println(((HttpServletRequest) request).getContextPath());
		if (httpSession.getAttribute("login")==null) {
			((HttpServletResponse)response).sendRedirect(((HttpServletRequest) request).getContextPath()+"/V2beach1024/Views-JavaServerPages/Index.jsp");
//			((HttpServletResponse)response).sendRedirect("Index.v");//Maybe I must give it up, urlrewrite.
			return ;
		}
		//Pass
		else chain.doFilter(request, response);
	}
	
}
