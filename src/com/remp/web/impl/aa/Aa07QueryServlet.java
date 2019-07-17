package com.remp.web.impl.aa;

public class Aa07QueryServlet extends Aa07ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageDate();
		return "aa/buildingManage";
	}

}
