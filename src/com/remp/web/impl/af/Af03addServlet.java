package com.remp.web.impl.af;

public class Af03addServlet extends Af03ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("add", "Ìí¼Ó");
		return "af/af03add";
	}
}
