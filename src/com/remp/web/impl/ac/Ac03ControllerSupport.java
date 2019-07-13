package com.remp.web.impl.ac;

import com.remp.services.impl.ac.Ac03ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ac03ControllerSupport extends ControllerSupport 
{

	public Ac03ControllerSupport() 
	{
		this.setServices(new Ac03ServicesImpl());
	}

}
