package cn.v2beach.listener;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import cn.v2beach.dbhelper.Statistics;

@WebListener
public class StatisticsListener implements ServletContextListener, HttpSessionListener {
	
    public StatisticsListener() {};

    //online users and total users
    public void sessionCreated(HttpSessionEvent se)  {
    	Statistics statistics=new Statistics();
    	ServletContext servletContext=se.getSession().getServletContext();
    	Integer onlineStatistics=(Integer) servletContext.getAttribute("onlineStatistics");
    	Integer totalStatistics=(Integer) servletContext.getAttribute("totalStatistics");
    	onlineStatistics++; totalStatistics++;
    	statistics.setTotalStatistics(totalStatistics);
    	servletContext.setAttribute("onlineStatistics", onlineStatistics);
    	servletContext.setAttribute("totalStatistics", totalStatistics);
    }

    public void sessionDestroyed(HttpSessionEvent se)  {
    	ServletContext servletContext=se.getSession().getServletContext();
    	Integer onlineStatistics=(Integer) servletContext.getAttribute("onlineStatistics");
    	onlineStatistics--;
    	servletContext.setAttribute("onlineStatistics", onlineStatistics);
    }

    public void contextInitialized(ServletContextEvent sce)  {
    	Statistics statistics=new Statistics();
    	Integer onlineStatistics=0;
    	Integer totalStatistics=statistics.getTotalStatistics();
    	ServletContext servletContext=sce.getServletContext();
    	servletContext.setAttribute("onlineStatistics", onlineStatistics);
    	servletContext.setAttribute("totalStatistics", totalStatistics);
    }
	
}
