package com.remp.web.impl.ab;


public class Ab05QueryToC1Servlet extends Ab05ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ab/ab05C1";
	}
}
