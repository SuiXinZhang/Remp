package com.remp.web.impl.ac;

public class Ac05DelByIdServlet extends Ac05ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("deleteById", "¿Í»§¹Ø»³É¾³ý");
		this.savePageDataForDelete();
		return "ac/careManage";
	}

}
