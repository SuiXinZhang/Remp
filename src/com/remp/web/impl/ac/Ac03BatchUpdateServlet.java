package com.remp.web.impl.ac;

public class Ac03BatchUpdateServlet extends Ac03ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("batchUpdate", "�������¸���״̬");
		this.savePageDate();
		return "ac/followManage";
	}

}
