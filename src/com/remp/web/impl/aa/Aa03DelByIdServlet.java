package com.remp.web.impl.aa;

public class Aa03DelByIdServlet extends Aa03ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("delByIdTeam", "ɾ��");
		this.savePageDataForDelete();
		return "aa/teamManage";
	}

}
