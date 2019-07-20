package com.remp.services;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

public interface BaseServices {

	void setMapDto(Map<String,Object> dto);
	
	void setSession(HttpSession session);
	/**
     * 接口的默认实现
     * @return
     * @throws Exception
     */
    default Map<String,String> findById()throws Exception
    {
   	 return null;
    }

    
    default List<Map<String,String>> query()throws Exception
    {
   	 return null;
    }
    
    default boolean update(String utype)throws Exception
    {
   	 return false;
    }
}
