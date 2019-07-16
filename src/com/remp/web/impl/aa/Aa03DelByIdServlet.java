package com.remp.web.impl.aa;

public class Aa03DelByIdServlet extends Aa03ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("delByIdTeam", "É¾³ý");
		this.savePageDataForDelete();
		return "aa/teamManage";
	}

}
