package com.remp.web.impl.aa;

public class Aa04FindByIdServlet extends Aa04ControllerSupport{

	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "aa/empAdd";
	}

}
