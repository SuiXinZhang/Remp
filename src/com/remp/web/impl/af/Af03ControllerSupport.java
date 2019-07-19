package com.remp.web.impl.af;

import com.remp.services.impl.af.Af03ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Af03ControllerSupport extends ControllerSupport {

	public Af03ControllerSupport() 
	{
		this.setServices(new Af03ServicesImpl());
	}

}
