package com.remp.web.impl.ae;

public class Ae02modifyListServlet extends Ae02BaseSupport
{
	@Override
	public String execute() throws Exception
	{
		this.update("modifyList", "��������");
		return "ae/ae02mod";
	}

}
