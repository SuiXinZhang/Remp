package com.remp.web.impl.aa;

import com.remp.services.impl.aa.Aa06ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Aa06ControllerSupport extends ControllerSupport {

	public Aa06ControllerSupport() {
		this.setServices(new Aa06ServicesImpl());
	}


}
