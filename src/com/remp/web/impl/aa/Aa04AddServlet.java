package com.remp.web.impl.aa;

public class Aa04AddServlet extends Aa04ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("addEmp", "Ա�����");
		this.savePageInstance();
		
		return "aa/empAdd";
	}

}
