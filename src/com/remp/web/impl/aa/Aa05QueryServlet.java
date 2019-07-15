package com.remp.web.impl.aa;

public class Aa05QueryServlet extends Aa05ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageDate();
		return "aa/typeManage";
	}

}
