package com.remp.web.impl.ac;

public class Ac02AddServlet extends Ac02ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("addIntention", "�ͻ������������");
		this.savePageInstance();
		return "ac/sellOpport";
	}

}
