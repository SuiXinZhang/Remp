package com.remp.web.impl.ae;

import com.remp.services.impl.ae.Ae01ServiceImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ae01BaseSupport extends ControllerSupport {
	public Ae01BaseSupport() 
	{
		this.setServices(new Ae01ServiceImpl());
	}
}
