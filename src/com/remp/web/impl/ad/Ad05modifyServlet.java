package com.remp.web.impl.ad;

public class Ad05modifyServlet extends Ad05ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modify", "ÐÞ¸Ä");
		return "ad/ad05add";
	}
}
