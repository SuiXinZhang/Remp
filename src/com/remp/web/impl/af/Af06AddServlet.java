package com.remp.web.impl.af;

public class Af06AddServlet extends Af06ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("add", "Ìí¼Ó");
		return "af/af06Add";
	}

}
