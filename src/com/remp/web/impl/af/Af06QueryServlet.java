package com.remp.web.impl.af;

public class Af06QueryServlet extends Af06ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "af/af06Query";
	}

}
