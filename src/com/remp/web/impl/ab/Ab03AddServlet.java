package com.remp.web.impl.ab;

public class Ab03AddServlet extends Ab03ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.update("add", "添加","添加成功,该方案编号为:","aab302");
		return "ab/ab03Add";
	}

}
