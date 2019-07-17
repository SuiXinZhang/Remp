package com.remp.web.impl.af;

import com.remp.services.impl.af.Af01ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Af01ControllerSupport extends ControllerSupport {
	public Af01ControllerSupport() 
	{
		this.setServices(new Af01ServicesImpl());
	}
}
