package com.remp.web.impl.aa;

public class Aa01ModifyServlet extends Aa01ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("modifyCompany", "公司信息修改");
		this.savePageInstance();
		return "aa/companyAdd";
	}

}
