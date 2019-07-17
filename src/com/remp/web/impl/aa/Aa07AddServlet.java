package com.remp.web.impl.aa;

public class Aa07AddServlet extends Aa07ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("addBuilding", "楼栋添加并生成房间");
		this.savePageInstance();
		
		return "aa/buildingAdd";
	}

}
