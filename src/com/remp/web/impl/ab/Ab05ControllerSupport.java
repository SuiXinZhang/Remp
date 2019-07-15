package com.remp.web.impl.ab;

import com.remp.services.impl.ab.Ab05ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ab05ControllerSupport extends ControllerSupport {

	public Ab05ControllerSupport() 
	{
		this.setServices(new Ab05ServicesImpl());
	}

}
