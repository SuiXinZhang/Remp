package com.remp.services.impl.ab;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class AbServicesImpl extends JdbcServicesSupport 
{
	
	private boolean addPlan()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ab01(aab102,aab103,aab104,aab105,aab106,")
				.append("				  aab107,aab108,aab109,aab110)")
				.append("		   values(?,?,?,?,?,")
				.append("		          ?,?,?,?);")
				;
		
		//参数数组
		Object args[]={
				this.get("aab102"),
				this.get("aab103"),
				this.get("aab104"),
				this.get("aab105"),
				this.get("aab106"),
				this.get("aab107"),
				this.get("aab108"),
				this.get("aab109"),
				this.get("aab110")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	public List<Map<String, String>> query()throws Exception
	{
		//还原页面查询条件
		Object qaab102 = this.get("qaab102");
		Object year = this.get("year");
		Object month = this.get("month");
		
		//定义SQL
		StringBuilder sql = new StringBuilder()
				.append("select aab101,aab102,aab103,aab104,aab105,")
				.append("		aab106,aab107,aab108,aab109,aab110")
				.append("  from ab01")
				.append(" where true")
				;
		
		//参数列表
		List<Object> paramList = new ArrayList<>();
		//逐一判断查询条件是否录入
		if (this.isNotNull(qaab102))
		{
			sql.append(" and aab102 like ?");
			paramList.add("%"+qaab102+"%");
		}
		if (this.isNotNull(year))
		{
			sql.append(" and year(aab103)=?");
			paramList.add(year);
		}
		if (this.isNotNull(month))
		{
			sql.append(" and month(aab103)=?");
			paramList.add(month);
		}
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	
}
