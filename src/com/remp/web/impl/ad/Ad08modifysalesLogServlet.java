package com.remp.web.impl.ad;

public class Ad08modifysalesLogServlet extends Ad08ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modifysalesLog", "�޸�");
		return "ad/ad08addsalesLog";
	}
}
