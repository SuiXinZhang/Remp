package com.remp.web.impl.ab;

public class Ab03AddServlet extends Ab03ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.update("add", "���","��ӳɹ�,�÷������Ϊ:","aab302");
		return "ab/ab03Add";
	}

}
