package com.remp.web.impl.ac;

import com.remp.services.impl.ac.Ac05ServicesImpl;
import com.remp.web.support.ControllerSupport;

public abstract class Ac05ControllerSupport extends ControllerSupport {
	public Ac05ControllerSupport() {
		this.setServices(new Ac05ServicesImpl());
	}
}
