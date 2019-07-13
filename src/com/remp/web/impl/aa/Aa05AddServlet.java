package com.remp.web.impl.aa;

public class Aa05AddServlet extends Aa05ControllerSupport {
	@Override
	public String execute() throws Exception {
		this.update("addType", "户型类型添加");
		this.savePageInstance();
		
		return "aa/typeAdd";
	}

}
