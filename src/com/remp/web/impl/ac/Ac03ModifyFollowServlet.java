package com.remp.web.impl.ac;

public class Ac03ModifyFollowServlet extends Ac03ControllerSupport 
{
	@Override
	public String execute() throws Exception
	{
		this.update("modifyFollow", "������Ӹ���Ա��");
		this.savePageDate();
		return "ac/followManage";
	}

}
