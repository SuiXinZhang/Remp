package com.remp.web.impl.ac;

public class Ac02ModifyServlet extends Ac02ControllerSupport {
	@Override
	public String execute() throws Exception 
	{
		this.update("modifyIntention", "�ͻ���������");
		this.savePageInstance();
		return "ac/sellOpport";
	}

}
