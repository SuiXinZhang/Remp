package com.remp.web.impl.ac;

public class Ac03FindByIdServlet extends Ac03ControllerSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ac/addFollow";
	}

}
