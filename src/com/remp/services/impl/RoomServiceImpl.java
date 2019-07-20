package com.remp.services.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class RoomServiceImpl extends JdbcServicesSupport 
{
	/**
	 * 获取房间具体信息
	 * @return
	 * @throws Exception
	 */
	public Map<String, String> getPrj()throws Exception
	{
		String sql="select aaa202,aaa201 from aa02";
//		String sql2="select aaa602,aaa601 from aa06";
//		String sql3="select aaa702,aaa701 from aa07";
//		String sql4="select distinct aaa803,1 from aa08";
		Map<String, String> map = new HashMap<>();
		map.put("prj", this.getFolderList(sql));
//		map.put("xq", this.getFolderList(sql2));
//		map.put("ld", this.getFolderList(sql3));
//		map.put("room", this.getFolderList(sql4));
		return map;
	}
	
	public List<Map<String, String>> getXq(String id)throws Exception
	{
		String sql = "select aaa602,aaa601 from aa06 where aaa201 = ?";
		return this.queryForList(sql, id);
	}
	
	public List<Map<String, String>> getld(String id)throws Exception
	{
		String sql = "select aaa702,aaa701 from aa07 where aaa601 = ?";
		return this.queryForList(sql, id);
	}
	
	public List<Map<String, String>> getroom(String id)throws Exception
	{
		String sql = "select aaa803,aaa801 from aa08 where aaa701 = ?";
		return this.queryForList(sql, id);
	}

}
