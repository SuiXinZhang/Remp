package com.remp.web.impl.aa;

public class Aa03AddServlet  extends Aa03ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("addTeam", "������Ϣ���");
		this.savePageInstance();
		return "aa/teamAdd";
	}

}
