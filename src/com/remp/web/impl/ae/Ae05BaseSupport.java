package com.remp.web.impl.ae;

import com.remp.services.impl.ae.Ae05ServiceImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ae05BaseSupport extends ControllerSupport
{
	public Ae05BaseSupport() 
	{
		this.setServices(new Ae05ServiceImpl());	
	}
}
