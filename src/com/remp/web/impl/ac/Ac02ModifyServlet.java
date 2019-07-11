package com.remp.web.impl.ac;

public class Ac02ModifyServlet extends Ac02ControllerSupport {
	@Override
	public String execute() throws Exception 
	{
		this.update("modifyIntention", "客户意向表更新");
		this.savePageInstance();
		return "ac/sellOpport";
	}

}
