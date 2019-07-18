package com.remp.services.impl.ad;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ad05ServicesImpl extends JdbcServicesSupport 
{
	/**
	 * 在添加预约记录之前,验证客户是否有记录,若无则添加客户信息
	 * @return
	 * @throws Exception
	 */
	public Map<String, String> findByName()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select a.aac401,a.aac403,a.aac407,b.aaa801,b.aaa803")
				.append("  from ac04 a,aa08 b ")
				.append(" where aac403=? and aac407=?")
				.append("   and aaa801=?")
				;
		Object args[] ={
				this.get("caac403"),
				this.get("caac407"),
				this.get("aaa801")
		};
		return this.queryForMap(sql.toString(), args);
	}
	
	public boolean add()throws Exception
	{
		StringBuilder sql1 = new StringBuilder()
				.append("insert into ad05(aac401,aaa801,aad502,aad503,aad504,")
				.append("                 aad505,aad506,aad507,aad508)")
				.append("          values(?,?,?,?,?,")
				.append("                 ?,?,?,?)")
				;
		Object args[]={
				this.get("aac401"),
				this.get("aaa801"),
				this.get("aad502"),
				this.get("aad503"),
				this.get("aad504"),
				this.get("aad505"),
				this.get("aad506"),
				this.get("aad507"),
				this.get("aad508")
		};
		String sql2 = "update aa08 set aaa805='05' where aaa801=?";
		this.appendSql(sql1.toString(), args);
		this.appendSql(sql2, this.get("aaa801"));
		return this.executeTransaction();
	}
	
	public List<Map<String,String>> query()throws Exception
	{
		Object qaad508 = this.get("qaad508");
		Object qaad502 = this.get("qqad502");
		StringBuilder sql = new StringBuilder()
				.append("select aad501,aac401,aaa801,aad502,aad503,")
				.append("       aad504,aad505,aad506,aad507,aad508")
				.append("  from ad05");
		List<Object> paramList = new ArrayList<>();
		if (this.isNotNull(qaad508)) 
		{
			sql.append(" where aad508 like ?");
			paramList.add("%"+qaad508+"%");
		}
		if (this.isNotNull(qaad502)) 
		{
			sql.append(" and aad502=?");
			paramList.add(qaad502);
		}
		return this.queryForList(sql.toString(),paramList.toArray());
	}
	
	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select aad501,aac401,aaa801,aad502,aad503,")
				.append("       aad504,aad505,aad506,aad507,aad508")
				.append("  from ad05")
				.append(" where aad501=?")
				;
		return this.queryForMap(sql.toString(), this.get("aad501"));
	}
	
	public boolean modify()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ad05")
				.append("   set aad502=?,aad503=?,aad504=?,aad505=?,aad506=?,")
				.append("       aad507=?,aad508=?")
				.append(" where aad501=?")
				;
		Object args[]={
				this.get("aad502"),
				this.get("aad503"),
				this.get("aad504"),
				this.get("aad505"),
				this.get("aad506"),
				this.get("aad507"),
				this.get("aad508"),
				this.get("aad501")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	public boolean cancelReserve()throws Exception
	{
		String sql1 = "update ad05 set aad507 = '失效' where aad501=?";
		String sql2 = "update ad05 a, aa08 b set b.aaa805='01' where a.aad501=? and a.aaa801=b.aaa801";
		this.appendSql(sql1, this.get("aad501"));
		this.appendSql(sql2, this.get("aad501"));
		return this.executeTransaction();
	}
}
