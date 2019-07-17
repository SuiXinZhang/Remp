package com.remp.web.impl.aa;

public class Aa07DeleteServlet extends Aa07ControllerSupport {
	@Override
	public String execute() throws Exception {
		this.update("deleteBuildings", "Â¥¶°ÅúÁ¿É¾³ý");
		this.savePageDataForDelete();
		return "aa/buildingManage";
	}

}
