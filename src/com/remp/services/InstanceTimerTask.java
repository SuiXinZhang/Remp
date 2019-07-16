package com.remp.services;

import java.util.TimerTask;

import javax.servlet.ServletContext;

import com.remp.services.impl.ac.AcServicesImpl;

public class InstanceTimerTask extends TimerTask {

	private ServletContext sc = null;
	private static boolean running=false;
 
	//constructor method of CCoreTask
	public InstanceTimerTask(ServletContext sc)
	{
		this.sc = sc;
	}
	
	@Override
	public void run() {
		
		try {
			AcServicesImpl impl = new AcServicesImpl();
			impl.sendMailTimer();
		} catch (Exception e) {
			System.out.println("定时执行Ac出现错误");
			e.printStackTrace();
		}
	}

}
