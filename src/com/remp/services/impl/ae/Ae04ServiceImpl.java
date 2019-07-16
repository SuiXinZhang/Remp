package com.remp.services.impl.ae;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ae04ServiceImpl extends JdbcServicesSupport 
{
	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select e.aae401,e.aae402,e.aae403,e.aae405,e.aae406,s.fvalue as snaae411,")
				.append("       e.aae407,e.aae408,e.aae409,e.aae410,e.aae411,a.aaa803,a.aaa801,")
				.append("       e.aae412,e.aae413,e.aae414,e.aae415")
				.append("   from ae04 as e,aa08 as a,syscode s")
				.append("   where aae401 = ? and a.aaa801 = e.aaa801")
				.append("    and s.fname='aae411' and e.aae411 = s.fcode")
				;
		return this.queryForMap(sql.toString(), this.get("aae401"));
	}
	
	public boolean addAe04()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ae04(aae402,aae403,aae405,aae406,")
				.append("                 aae407,aae408,aae409,aae410,aae411,")
				.append("				  aae412,aaa801)")
				.append("          values(?,?,?,?,")
				.append("                 ?,?,?,?,?,")
				.append("                 ?,?)")
				;
		Object args[] = new Object[]{
				this.get("aae402"),
				this.get("aae403"),
				this.get("aae405"),
				this.get("aae406"),
				this.get("aae407"),
				this.get("aae408"),
				this.get("aae409"),
				this.get("aae410"),
				"01",
				this.get("aae412"),
				this.get("aaa801")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	public List<Map<String, String>> query()throws Exception
	{
		Object qaae402 = this.get("qaae402");
		Object qaaa803 = this.get("qaaa803");
		StringBuilder sql = new StringBuilder()
				.append("select e.aae401,e.aae402,e.aae403,a.aaa803,a.aaa801,e.aae409,e.aae410,s.fvalue as snaae411")
				.append("       from aa08 a,ae04 e,syscode s")
				.append("       where true")
				;
		List<Object> paramList = new ArrayList<>();
		if(isNotNull(qaae402))
		{
			sql.append("	and e.aae402 like ?");
			paramList.add("%"+qaae402+"%");
		}
		if(isNotNull(qaaa803))
		{
			sql.append("	and a.aaa803 like ?");
			paramList.add("%"+qaaa803+"%");
		}
		sql.append("     and a.aaa801 = e.aaa801")
			.append(" and s.fname='aae411' ")
			.append(" and e.aae411 = s.fcode");
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
				.append("update ae04 ")
				.append("   set aae402=?,aae403=?,aae404=?,aae405=?,aae406=?,")            
				.append("       aae407=?,aae408=?,aae409=?,aae410=?,aae411=?,") 
				.append("       aae412=?,aaa801=?")
				.append("	where aae401 = ? ")
				;
		Object args[] = new Object[]{
			this.get("aae402"),
			this.get("aae403"),
			"",
			this.get("aae405"),
			this.get("aae406"),
			this.get("aae407"),
			this.get("aae408"),
			this.get("aae409"),
			this.get("aae410"),
			this.get("aae411"),
			this.get("aae412"),
			this.get("aaa801"),
			this.get("aae401")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	public boolean ae04mod()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ae04 ")
				.append("   set aae413=?,aae414=?,aae415=?,aae411=?")            
				.append("	where aae401 = ? ")
				;
		Object args[] = new Object[]{
			this.get("aae413"),
			this.get("aae414"),
			this.get("aaa415"),
			"02",
			this.get("aae401")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
}
