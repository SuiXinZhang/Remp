package com.remp.web.support;

import java.util.Map;

import javax.servlet.http.HttpSession;

public interface BaseController {

	void setMapDto(Map<String,Object> dto);
	String execute() throws Exception;
	
	Map<String,Object> getAttribute();
	
	void setSession(HttpSession session);
}
