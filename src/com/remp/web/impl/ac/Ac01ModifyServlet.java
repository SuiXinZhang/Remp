package com.remp.web.impl.ac;

public class Ac01ModifyServlet extends Ac01ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("modifyClue", "�����޸�");
		this.savePageInstance();
		return "ac/clueAdd";
	}
}
