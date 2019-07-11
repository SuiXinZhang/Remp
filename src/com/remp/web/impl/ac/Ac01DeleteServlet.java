package com.remp.web.impl.ac;

public class Ac01DeleteServlet extends Ac01ControllerSupport {

	@Override
	public String execute() throws Exception {
		this.update("delete", "ÏßË÷ÅúÁ¿É¾³ý");
		this.savePageDataForDelete();
		return "ac/clueManage";
	}

}
