package com.remp.web.impl.aa;

public class Aa04ModifyServlet extends Aa04ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("modifyEmp", "Ա����Ϣ�޸�");
		this.savePageInstance();
		return "aa/empAdd";
	}

}
