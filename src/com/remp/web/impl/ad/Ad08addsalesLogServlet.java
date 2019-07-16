package com.remp.web.impl.ad;

public class Ad08addsalesLogServlet extends Ad08ControllerSupport {
	@Override
	public String execute() throws Exception 
	{
		this.update("addsalesLog", "Ìí¼Ó");
		return "ad/ad08addsalesLog";
	}
}
