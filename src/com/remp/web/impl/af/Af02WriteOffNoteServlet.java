package com.remp.web.impl.af;

public class Af02WriteOffNoteServlet extends Af02ControllerSupport {
	@Override
	public String execute() throws Exception 
	{
		this.update("writeOffNote", "Ʊ�ݺ���");
		this.savePageDate();
		return "af/af02Query";
	}

}
