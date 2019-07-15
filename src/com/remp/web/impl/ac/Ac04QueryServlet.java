package com.remp.web.impl.ac;

public class Ac04QueryServlet extends Ac04ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ac/clientManage";
	}

}
