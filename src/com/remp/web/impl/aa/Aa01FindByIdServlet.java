package com.remp.web.impl.aa;

public class Aa01FindByIdServlet extends Aa01ControllerSupport{


	@Override
	public String execute() throws Exception {
		this.savePageInstance();
		return "aa/companyAdd";
	}

}
