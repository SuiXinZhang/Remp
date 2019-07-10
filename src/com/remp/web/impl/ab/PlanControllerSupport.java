package com.remp.web.impl.ab;

import com.remp.services.impl.ab.Ab01ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class PlanControllerSupport extends ControllerSupport 
{

	public PlanControllerSupport() 
	{
		this.setServices(new Ab01ServicesImpl());
	}

}
