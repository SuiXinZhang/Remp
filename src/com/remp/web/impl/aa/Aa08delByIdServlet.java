package com.remp.web.impl.aa;

public class Aa08delByIdServlet extends Aa08ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("delByIdRoom", "É¾³ý");
		this.savePageDataForDelete();
		return "aa/roomManage";
	}

}
