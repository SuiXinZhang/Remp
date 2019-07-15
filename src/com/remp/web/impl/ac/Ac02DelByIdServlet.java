package com.remp.web.impl.ac;

public class Ac02DelByIdServlet extends Ac02ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("deleteById", "É¾³ý");
		this.savePageDataForDelete();
		return "ac/sellOpportManage";
	}
}
