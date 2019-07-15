package com.remp.web.impl.aa;

import com.remp.services.impl.aa.Aa05ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Aa05ControllerSupport extends ControllerSupport {

	public Aa05ControllerSupport() {
		this.setServices(new Aa05ServicesImpl());
	}

}
