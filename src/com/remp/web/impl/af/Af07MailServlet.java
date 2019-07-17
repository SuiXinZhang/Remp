package com.remp.web.impl.af;

public class Af07MailServlet extends Af07ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("sendEmail", "Ьсаб");
		this.savePageDate();
		return "af/af07Query";
	}

}
