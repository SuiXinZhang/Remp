package com.remp.web.impl.ad;

public class Ad05addServlet extends Ad05ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("add", "Ìí¼Ó");
		return "ad/ad05add";
	}
}
