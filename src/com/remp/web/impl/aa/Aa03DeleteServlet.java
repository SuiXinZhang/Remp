package com.remp.web.impl.aa;


public class Aa03DeleteServlet extends Aa03ControllerSupport  {

	@Override
	public String execute() throws Exception {
		this.update("deleteTeams", "�Ŷ�����ɾ��");
		this.savePageDataForDelete();
		return "aa/teamManage";
	}

}
