package com.remp.web.impl.ad;

import java.util.Map;

public class Ad05customerQueryServlet extends Ad05ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		Map<String, String> ins = this.contract("findByName");
		if(ins!=null)
		{
			return "ad/ad05add";
		}
		else 
		{
			return "ac/addClient";
		}
	}
}
