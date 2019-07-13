package com.remp.web.impl.aa;

public class Aa02QueryServlet extends Aa02ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageDate();
		return "aa/projectManage";
	}

}
