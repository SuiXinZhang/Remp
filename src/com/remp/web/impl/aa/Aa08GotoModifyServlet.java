package com.remp.web.impl.aa;

public class Aa08GotoModifyServlet extends Aa08ControllerSupport{
	@Override
	public String execute() throws Exception {
		this.saveInfo("queryAa05ForSelect");//��ѯ���еĻ�������
		return "aa/roomsModify";
	}

}
