package com.remp.web.impl.aa;

public class Aa07AddServlet extends Aa07ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("addBuilding", "¥����Ӳ����ɷ���");
		this.savePageInstance();
		
		return "aa/buildingAdd";
	}

}
