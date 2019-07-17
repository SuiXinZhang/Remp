package com.remp.web.impl.af;

public class Af07AddServlet extends Af07ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.update("add", "Ìí¼Ó");
		return "af/af07Add";
	}

}
