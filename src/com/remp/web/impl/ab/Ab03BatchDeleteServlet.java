package com.remp.web.impl.ab;

public class Ab03BatchDeleteServlet extends Ab03ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("batchDelete", "ɾ��");
		this.savePageDataForDelete();
		return "ab/ab03Query";
	}

}
