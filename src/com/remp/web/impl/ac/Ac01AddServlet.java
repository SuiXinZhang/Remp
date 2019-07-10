package com.remp.web.impl.ac;

public class Ac01AddServlet extends Ac01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("addClue", "ÏßË÷Ìí¼Ó");
		this.savePageInstance();
		return "ac/clueAdd";
	}
}
