package com.remp.web.impl.ae;

import com.remp.services.impl.ae.Ae02ServiceImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ae02BaseSupport extends ControllerSupport {
	public Ae02BaseSupport() 
	{
		this.setServices(new Ae02ServiceImpl());
	}
}
