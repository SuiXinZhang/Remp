package com.remp.web.impl.ac;

public class Ac04ChangeOpportServlet extends Ac04ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ac/sellOpport";
	}
}
