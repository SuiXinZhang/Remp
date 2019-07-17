package com.remp.services.impl.ae;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ae05ServiceImpl extends JdbcServicesSupport
{
	public List<Map<String, String>> query()throws Exception
	{
		Object qaae707 = this.get("qaae707");
		Object qaaa803 = this.get("qaaa803");
		StringBuilder sql = new StringBuilder()
				.append("select d.aae707,c.aae501,c.aae502,c.aae503,c.aae504,c.aae505,a.aaa803")
				.append("			from ae05 c left join ae07 d on c.aae701 = d.aae701,aa08 a")
				.append("           where true")
				;
		List<Object> paramList = new ArrayList<>();
		if(isNotNull(qaae707))
		{
			sql.append("	and d.aae707 like ?");
			paramList.add("%"+qaae707+"%");
		}
		if(isNotNull(qaaa803))
		{
			sql.append("	and a.aaa803 like ?");
			paramList.add("%"+qaaa803+"%");
		}
		sql.append("     and d.aaa801 = a.aaa801");
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	
	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select d.aae707,c.aae501,c.aae502,c.aae503,c.aae504,")
				.append("       c.aae505,c.aae506,a.aaa803,d.aae702,d.aae703")
				.append("			from ae05 c left join ae07 d on c.aae701 = d.aae701,aa08 a")
				.append("           where c.aae501=? and d.aaa801=a.aaa801")
				;
		System.out.println(this.get("aae501"));
		return this.queryForMap(sql.toString(),this.get("aae501"));
	}
	
	public boolean modify()throws Exception
	{
		String sql = "update ae05 set aae505=? were aae501=?";
		Object[] args = new Object[]{
				this.get("aae505"),
				this.get("aae501")
		};
		return this.executeUpdate(sql, args)>0;
	}
}
