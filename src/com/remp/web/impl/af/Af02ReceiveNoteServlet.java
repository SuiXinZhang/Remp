package com.remp.web.impl.af;

public class Af02ReceiveNoteServlet extends Af02ControllerSupport 
{
	@Override
	public String execute() throws Exception {
		this.update("receiveNote", "Ʊ������");
		this.savePageDate();
		return "af/af02Query";
	}

}
