package com.remp.web.impl.ab;

public class Ab03BatchDeleteServlet extends Ab03ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("batchDelete", "É¾³ý");
		this.savePageDataForDelete();
		return "ab/ab03Query";
	}

}
