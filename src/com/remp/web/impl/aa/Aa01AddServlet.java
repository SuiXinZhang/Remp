package com.remp.web.impl.aa;

public class Aa01AddServlet extends Aa01ControllerSupport {

	@Override
	public String execute() throws Exception 
	{
		this.update("addCompany", "公司信息添加");
		this.savePageInstance();
		return "aa/companyAdd";
	}

}
