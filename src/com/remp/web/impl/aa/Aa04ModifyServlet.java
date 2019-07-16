package com.remp.web.impl.aa;

public class Aa04ModifyServlet extends Aa04ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("modifyEmp", "员工信息修改");
		this.savePageInstance();
		return "aa/empAdd";
	}

}
