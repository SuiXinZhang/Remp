package com.remp.web.impl.af;

public class Af06ModifyServlet extends Af06ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modifyLoan", "�޸�");
		this.savePageInstance();
		return "af/af06Add";
	}
}
