package com.remp.web.impl.aa;

public class Aa09QueryServlet extends Aa09ControllerSupport {


	@Override
	public String execute() throws Exception {
		this.savePageDate();
		return "aa/methodManage";
	}


}
