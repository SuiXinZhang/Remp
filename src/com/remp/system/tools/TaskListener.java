package com.remp.system.tools;

import java.util.Date;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

import com.remp.services.InstanceTimerTask;

@WebListener
public class TaskListener implements ServletContextListener {

	private java.util.Timer timer = null;
    
    public void contextInitialized(ServletContextEvent arg0)  
    { 
    	timer = new java.util.Timer(true);
    	arg0.getServletContext().log("initializing system core task...");
		timer.schedule(new InstanceTimerTask(arg0.getServletContext()), new Date(), 2*60*1000);

    }

    public void contextDestroyed(ServletContextEvent arg0)  
    { 
    	arg0.getServletContext().log("system core auto task ended.");
		timer.cancel();
    }
}
