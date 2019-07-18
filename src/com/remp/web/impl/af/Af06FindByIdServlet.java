package com.remp.web.impl.af;

public class Af06FindByIdServlet extends Af06ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "af/af06Add";
	}

}
