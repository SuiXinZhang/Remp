package com.remp.web.impl.af;

public class Af02DiscardNoteServlet extends Af02ControllerSupport 
{
	@Override
	public String execute() throws Exception 
	{
		this.update("discardNote", "Æ±¾Ý·ÏÆú");
		this.savePageDate();
		return "af/af02Query";
	}
}
