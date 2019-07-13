package com.remp.web.impl.ac;

public class Ac03QueryServlet extends Ac03ControllerSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.savePageDate();
		return "ac/followManage";
	}

}
