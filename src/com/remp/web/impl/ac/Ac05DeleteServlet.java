package com.remp.web.impl.ac;

public class Ac05DeleteServlet extends Ac05ControllerSupport {
	@Override
	public String execute() throws Exception
	{
		this.update("delete", "¿Í»§¹Ø»³É¾³ý");
		this.savePageDataForDelete();
		return "ac/careManage";
	}

}
