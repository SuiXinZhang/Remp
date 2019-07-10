package com.remp.web.impl.ac;

public class Ac01FindByIdServlet extends Ac01ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageInstance();
		return "ac/clueAdd";
	}
}
