package com.remp.web.impl.aa;

public class Aa02SelectServlet extends Aa02ControllerSupport {
	@Override
	public String execute() throws Exception {
		this.QueryInfo("queryForSelect");
		this.savePageDate();
		return "aa/projectSelect";
	}

}
