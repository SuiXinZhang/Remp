package com.remp.web.impl.ac;

public class Ac05FindByIdServlet extends Ac05ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ac/clientCare";
	}

}
