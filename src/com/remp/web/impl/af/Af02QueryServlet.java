package com.remp.web.impl.af;

public class Af02QueryServlet extends Af02ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "af/af02Query";
	}

}
