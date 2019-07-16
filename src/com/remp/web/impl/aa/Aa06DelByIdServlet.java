package com.remp.web.impl.aa;

public class Aa06DelByIdServlet extends Aa06ControllerSupport {
	@Override
	public String execute() throws Exception {
		this.update("delByIdArea", "É¾³ý");
		this.savePageDataForDelete();
		return "aa/areaManage";
	}

}
