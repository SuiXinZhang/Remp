package com.remp.services.impl.ae;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ae03ServiceImpl extends JdbcServicesSupport 
{
	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select e.aae301,e.aae302,e.aae303,e.aae304,e.aae305,")
				.append("       e.aae306,e.aae307,e.aae308,e.aae311,e.aae312,a.aaa801")
				.append("   from ae03 as e,aa08 as a")
				.append("   where aae301 = ? and a.aaa801 = e.aaa801")
				;
		return this.queryForMap(sql.toString(), this.get("aae301"));
	}
	
	public boolean addAe03()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ae03(aae302,aae303,aae304,aae305,aae306,")
				.append("                 aae307,aae308,aae311,aae312,aaa801)")
				.append("          values(?,?,?,?,?,")
				.append("                 ?,?,?,?,?)")
				;
		Object args[] = new Object[]{
				this.get("aae302"),
				this.get("aae303"),
				this.get("aae304"),
				this.get("aae305"),
				this.get("aae306"),
				this.get("aae307"),
				this.get("aae308"),
				this.get("aae311"),
				this.get("aae312"),
				this.get("aaa801")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	public List<Map<String, String>> query()throws Exception
	{
		Object qaae302 = this.get("qaae302");
		Object qaae312 = this.get("qaae312");
		StringBuilder sql = new StringBuilder()
				.append("select e.aae301,e.aae302,e.aae303,e.aae312,a.aaa801,e.aae305,e.aae307,e.aae308")
				.append("       from aa08 a,ae03 e")
				.append("       where true")
				;
		List<Object> paramList = new ArrayList<>();
		if(isNotNull(qaae302))
		{
			sql.append("	and e.aae302 like ?");
			paramList.add("%"+qaae302+"%");
		}
		if(isNotNull(qaae312))
		{
			sql.append("	and e.aae312 like ?");
			paramList.add("%"+qaae312+"%");
		}
		sql.append("     and a.aaa801 = e.aaa801");
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	
	public Map<String, String> getAa08List()throws Exception
	{
		String sql = "select aaa803,aaa801 from aa08";
		String str = this.getFolderList(sql);
		Map<String, String> ins = new HashMap<>();
		ins.put("list", str);
		return ins;
	}
	
	public boolean modify()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ae03 ")
				.append("   set aae302=? ,aae303=?,aae304=?,aae305=?, ")            
				.append("    aae306=?,aae307=?,aae308=?,aae311=?,aae312=?,aaa801=?")     
				.append("	where aae301 = ? ")
				;
		Object args[] = new Object[]{
			this.get("aae302"),
			this.get("aae303"),
			this.get("aae304"),
			this.get("aae305"),
			this.get("aae306"),
			this.get("aae307"),
			this.get("aae308"),
			this.get("aae311"),
			this.get("aae312"),
			this.get("aaa801"),
			this.get("aae301")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
}
