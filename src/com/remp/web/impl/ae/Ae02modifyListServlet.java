package com.remp.web.impl.ae;

public class Ae02modifyListServlet extends Ae02BaseSupport
{
	@Override
	public String execute() throws Exception
	{
		this.update("modifyList", "批量备案");
		return "ae/ae02mod";
	}

}
