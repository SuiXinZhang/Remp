package com.remp.web.impl.aa;

public class Aa08QueryServlet extends Aa08ControllerSupport {
	@Override
	public String execute() throws Exception {
		this.saveInfo("queryAa05ForSelect");//��ѯ���еĻ�������
		this.savePageDate();
		return "aa/roomManage";
	}

}
