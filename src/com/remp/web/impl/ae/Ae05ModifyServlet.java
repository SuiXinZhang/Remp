package com.remp.web.impl.ae;

public class Ae05ModifyServlet extends Ae05BaseSupport
{
	@Override
	public String execute() throws Exception
	{
		this.update("modify", "�޸�");
		return "ae05mod";
	}
}
