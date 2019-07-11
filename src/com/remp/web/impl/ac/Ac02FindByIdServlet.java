package com.remp.web.impl.ac;

public class Ac02FindByIdServlet extends Ac02ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ac/sellOpport";
	}

}
