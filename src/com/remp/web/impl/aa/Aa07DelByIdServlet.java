package com.remp.web.impl.aa;

public class Aa07DelByIdServlet extends Aa07ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("delByIdBuilding", "ɾ��");
		this.savePageDataForDelete();
		return "aa/buildingManage";
	}

}
