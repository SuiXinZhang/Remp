package com.remp.web.impl.aa;

public class Aa01ModifyServlet extends Aa01ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("modifyCompany", "��˾��Ϣ����");
		this.savePageInstance();
		return "aa/companyAdd";
	}

}
