package com.remp.web.impl.ae;

public class AeSelect01Servlet extends AeSelectBaseSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.savePageInstance();
		return "ae/ae01selectadd";
	}

}
