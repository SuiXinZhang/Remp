package com.remp.web.impl.ab;

public class Ab03DelByIdServlet extends Ab03ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("delById", "ɾ��");
		this.savePageDataForDelete();
		return "ab/ab03Query";
	}

}
