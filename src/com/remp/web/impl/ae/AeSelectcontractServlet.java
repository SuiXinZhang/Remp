package com.remp.web.impl.ae;

import com.remp.services.impl.ae.AeSelectContractServiceImpl;
import com.remp.web.support.ControllerSupport;

public class AeSelectcontractServlet extends AeSelectBaseSupport 
{
	@Override
	public String execute() throws Exception {
		this.savePageDate();
		return "ae/selectContract";
	}

}
