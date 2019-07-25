package com.remp.web.impl.ae;

import com.remp.services.impl.ae.AeSelectContractServiceImpl;
import com.remp.web.support.ControllerSupport;

public abstract class AeSelectBaseSupport extends ControllerSupport 
{
	public AeSelectBaseSupport() 
	{
		this.setServices(new AeSelectContractServiceImpl());
	}
}
