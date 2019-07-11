package com.remp.web.impl.ad;

import java.util.Map;

public class Ad03customerConServlet extends Ad03ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		Map<String, String> ins = this.contract("findByName");
		if(ins!=null)
		{
			return "ad/ad03confirm";
		}
		else 
		{
			return "ad/ad01customerQuery";
		}
	}

}
