package com.remp.web.impl.aa;

public class Aa06DeleteServlet extends Aa06ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("deleteAreas", "��������ɾ��");
		this.savePageDataForDelete();
		return "aa/areaManage";
	}

}
