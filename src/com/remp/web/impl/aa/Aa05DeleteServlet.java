package com.remp.web.impl.aa;

public class Aa05DeleteServlet extends Aa05ControllerSupport {
	
	@Override
	public String execute() throws Exception {
		this.update("deleteType", "户型批量删除");
		this.savePageDataForDelete();
		return "aa/typeManage";
	}

}
