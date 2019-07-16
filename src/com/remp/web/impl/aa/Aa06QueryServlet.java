package com.remp.web.impl.aa;

public class Aa06QueryServlet extends Aa06ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageDate();
		return "aa/areaManage";
	}

}
