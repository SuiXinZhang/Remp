package com.remp.services.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class SetsessionServiceImpl extends JdbcServicesSupport
{
	/**
	 * 将项目信息存入session中
	 * @throws Exception
	 */
	public void setPrjsToSession()throws Exception
	{
		String sql = "select aaa202,aaa201 from aa02";
		List<Map<String, String>> res = this.queryForList(sql);
		Map<String, String> prjs = new HashMap<>(res.size());
		for(Map<String, String> prj:res)
		{
			prjs.put(prj.get("aaa201"), prj.get("aaa202"));
		}
		System.out.println(prjs);
		this.setSessionAttr("prjs", prjs);
	}
}
