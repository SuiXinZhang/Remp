package com.remp.web.impl.af;

public class Af06ExamServlet extends Af06ControllerSupport 
{

	@Override
	public String execute() throws Exception 
	{
		this.update("modifyExam", "����");
		this.savePageInstance();
		return "af/af06Add";
	}

}
