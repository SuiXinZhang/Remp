package com.remp.web.impl.af;

import com.remp.services.impl.af.Af07ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Af07ControllerSupport extends ControllerSupport 
{
	public Af07ControllerSupport() 
	{
		this.setServices(new Af07ServicesImpl());
	}
}
