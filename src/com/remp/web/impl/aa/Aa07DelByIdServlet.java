package com.remp.web.impl.aa;

public class Aa07DelByIdServlet extends Aa07ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("delByIdBuilding", "É¾³ý");
		this.savePageDataForDelete();
		return "aa/buildingManage";
	}

}
