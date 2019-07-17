package com.remp.web.impl.af;

import com.remp.services.impl.af.Af02ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Af02ControllerSupport extends ControllerSupport {

	public Af02ControllerSupport() 
	{
		this.setServices(new Af02ServicesImpl());
	}
}
