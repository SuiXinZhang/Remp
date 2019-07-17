package com.remp.web.impl.aa;

import com.remp.services.impl.aa.Aa08ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Aa08ControllerSupport extends ControllerSupport {

	public Aa08ControllerSupport() {
		this.setServices(new Aa08ServicesImpl());
	}

}
