package com.remp.web.impl.aa;

public class Aa04QueryServlet extends Aa04ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.savePageDate();
		return "aa/empManage";
	}

}
