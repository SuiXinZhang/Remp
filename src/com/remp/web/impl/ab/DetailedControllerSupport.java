package com.remp.web.impl.ab;

import com.remp.services.impl.ab.Ab02ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class DetailedControllerSupport extends ControllerSupport 
{
	public DetailedControllerSupport() 
	{
		this.setServices(new Ab02ServicesImpl());
	}

}
