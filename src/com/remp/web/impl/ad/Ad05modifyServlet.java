package com.remp.web.impl.ad;

public class Ad05modifyServlet extends Ad05ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modify", "�޸�");
		return "ad/ad05add";
	}
}
