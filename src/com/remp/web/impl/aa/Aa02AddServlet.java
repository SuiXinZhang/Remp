package com.remp.web.impl.aa;

public class Aa02AddServlet  extends Aa02ControllerSupport  {

	@Override
	public String execute() throws Exception {
		this.update("addProject", "��Ŀ���");
		this.savePageInstance();
		return "aa/projectAdd";
	}

}
