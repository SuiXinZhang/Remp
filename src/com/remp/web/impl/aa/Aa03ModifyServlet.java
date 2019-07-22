package com.remp.web.impl.aa;

public class Aa03ModifyServlet extends Aa03ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("modifyTeam", "部门信息修改");
		this.savePageInstance();
		return "aa/teamAdd";
	}

}
