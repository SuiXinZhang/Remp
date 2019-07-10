package com.remp.web.impl.ad;

public class Ad01customerQueryServlet extends Ad01ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		boolean tag = this.contract("findByName");
		if(tag)
		{
			return "ad/ad01addOrder";
		}
		else 
		{
			return "ad/ac04add";
		}
	}

}
