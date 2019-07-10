package com.remp.web.impl.ad;

public class Ad01addOrderServlet extends Ad01ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("addOrder", "添加", "添加成功,该客户房间排号为:", "oaad108");
		return "ad/ad01addOrder";
	}

}
