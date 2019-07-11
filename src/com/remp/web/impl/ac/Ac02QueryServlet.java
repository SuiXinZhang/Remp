package com.remp.web.impl.ac;

public class Ac02QueryServlet extends Ac02ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.savePageDate();
		return "ac/sellOpportManage";
	}

}
