package com.remp.web.impl.aa;

public class Aa07ModifyServlet extends Aa07ControllerSupport{

	@Override
	public String execute() throws Exception {
		this.update("modifyBuilding", "¥����Ϣ�޸�");
		this.savePageInstance();
		return "aa/buildingAdd";
	}

}
