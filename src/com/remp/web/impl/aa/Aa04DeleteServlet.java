package com.remp.web.impl.aa;

public class Aa04DeleteServlet extends Aa04ControllerSupport {


	@Override
	public String execute() throws Exception {
		this.update("deleteEmp", "Ա������ɾ��");
		this.savePageDataForDelete();
		return "aa/empManage";
	}

}
