package com.remp.web.support;

import java.util.Map;

public interface BaseController {

	void setMapDto(Map<String,Object> dto);
	String execute() throws Exception;
	
	Map<String,Object> getAttribute();
}
