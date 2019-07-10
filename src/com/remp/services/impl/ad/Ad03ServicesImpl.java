package com.remp.services.impl.ad;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ad03ServicesImpl extends JdbcServicesSupport 
{

	public boolean addConfirm()throws Exception
	{
		StringBuilder sql1 = new StringBuilder()
				.append("insert into ad03(aaa801,aad302,aad303,aad304,aad305,")
				.append("                 aad306,aad307)")
				.append("          values(?,?,?,?,?,")
				.append("                 ?,?)")
				;
		Object args1[]={
				this.get("aaa801"),
				this.get("aad302"),
				this.get("aad303"),
				this.get("aad304"),
				this.get("aad305"),
				this.get("aad306"),
				this.get("aad307")
		};
		String sql2 = "update aa08 set aaa805=? where aaa801=?";
		Object args2[]={
				"04",
				this.get("aaa801")
		};
		
		this.appendSql(sql1.toString(), args1);
		this.appendSql(sql2, args2);
		
		return this.executeTransaction();
	}
	public List<Map<String, String>> query()throws Exception
	{
		String sql = "select aaa803 from aa08 where aaa801=?";
		return this.queryForList(sql, this.get("aaa801"));
	}
	
}
