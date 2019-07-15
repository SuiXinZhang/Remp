package com.remp.web.impl.aa;

public class Aa05DelByIdServlet extends Aa05ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("delByIdType", "É¾³ý");
		this.savePageDataForDelete();
		return "aa/typeManage";
	}

}
