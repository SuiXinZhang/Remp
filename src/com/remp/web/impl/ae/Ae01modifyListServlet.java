package com.remp.web.impl.ae;

public class Ae01modifyListServlet extends Ae01BaseSupport
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modifyList", "��������");
		return "ae/ae01query";
	}
}
