package com.remp.web.impl.aa;

import com.remp.services.impl.aa.Aa03ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Aa03ControllerSupport extends ControllerSupport {
	public Aa03ControllerSupport() {
		this.setServices(new Aa03ServicesImpl());
	}
	
}
