package com.remp.web.impl.aa;

public class Aa03QueryServlet extends Aa03ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageDate();
		return "aa/teamManage";
	}

}
