package com.remp.web.impl.ab;

public class Ab02QueryServlet extends DetailedControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ab/ab02Edit";
	}

}
