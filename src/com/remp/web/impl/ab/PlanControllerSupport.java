package com.remp.web.impl.ab;

import com.remp.services.impl.ab.AbServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class PlanControllerSupport extends ControllerSupport 
{

	public PlanControllerSupport() 
	{
		this.setServices(new AbServicesImpl());
	}

}
