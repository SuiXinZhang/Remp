package com.remp.web.impl.ad;

import java.util.Map;

public class Ad01customerQueryServlet extends Ad01ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		Map<String, String> ins = this.contract("findByName");
		if(ins!=null)
		{
			return "ad/ad01addOrder";
		}
		else 
		{
			return "ac/addClient";
		}
	}

}
