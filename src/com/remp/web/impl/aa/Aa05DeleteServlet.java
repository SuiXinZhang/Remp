package com.remp.web.impl.aa;

public class Aa05DeleteServlet extends Aa05ControllerSupport {
	
	@Override
	public String execute() throws Exception {
		this.update("deleteType", "��������ɾ��");
		this.savePageDataForDelete();
		return "aa/typeManage";
	}

}
