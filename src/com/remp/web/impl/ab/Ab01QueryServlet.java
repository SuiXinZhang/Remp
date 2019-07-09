package com.remp.web.impl.ab;

public class Ab01QueryServlet extends PlanControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ab01Query";
	}

}
