package com.remp.web.impl.ac;

public class Ac05QueryServlet extends Ac05ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ac/careManage";
	}

}
