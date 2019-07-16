package com.remp.web.impl.af;

import com.remp.services.impl.af.Af06ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Af06ControllerSupport extends ControllerSupport 
{
	public Af06ControllerSupport() 
	{
		this.setServices(new Af06ServicesImpl());
	}
}
