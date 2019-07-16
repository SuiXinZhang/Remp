package com.remp.web.impl.aa;

public class Aa08FindByIdServlet extends Aa08ControllerSupport {
	
	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "aa/roomModify";
	}

}
