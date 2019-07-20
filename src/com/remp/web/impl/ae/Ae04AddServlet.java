package com.remp.web.impl.ae;

public class Ae04AddServlet extends Ae04BaseSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.update("addAe04", "Ìí¼Ó");
		return "ae/ae04add";
	}

}
