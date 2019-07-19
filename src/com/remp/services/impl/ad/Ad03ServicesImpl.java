package com.remp.services.impl.ad;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ad03ServicesImpl extends JdbcServicesSupport 
{
	/**
	 * 添加看房记录
	 * @return
	 * @throws Exception
	 */
	public boolean addConfirm()throws Exception
	{
		StringBuilder sql1 = new StringBuilder()
				.append("insert into ad03(aaa801,aad302,aad303,aad304,aad305,")
				.append("                 aad306,aad307,aac401)")
				.append("          values(?,?,?,?,?,")
				.append("                 ?,?,?)")
				;
		Object args1[]={
				this.get("aaa801"),
				this.get("aad302"),
				this.get("aad303"),
				this.get("aad304"),
				this.get("aad305"),
				this.get("aad306"),
				this.get("aad307"),
				this.get("aac401")
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
	/**
	 * 获取房号
	 */
	public Map<String, String> findById()throws Exception
	{
		String sql = "select aaa803 from aa08 where aaa801=?";
		return this.queryForMap(sql, this.get("aaa801"));
	}
	/**
	 * 验证预约记录房间号,客户名称与项目排号是否与输入内容相符
	 * @return
	 * @throws Exception
	 */
	public Map<String, String> findByName()throws Exception
	{
		String sql = "select aac401 from ad01 where aad103=? and aad107=? and aad110=?";
		Object args[]={
				this.get("aad305"),
				this.get("aad304"),
				this.get("aad302")
		};
		return this.queryForMap(sql, args);
	}
	/**
	 * 查询看房记录
	 */
	public List<Map<String,String>> query()throws Exception
	{
		Object qaad305 = this.get("qaad305");
		Object qaad307 = this.get("qaad307");
		StringBuilder sql=new StringBuilder()
				.append("select a.aad301,a.aad302,a.aad303,a.aad304,a.aad305,")
				.append("       a.aad306,a.aad307,b.aaa801,c.fvalue caaa805,a.aac401")
				.append("  from ad03 a,aa08 b,syscode c")
				.append(" where a.aad302 = b.aaa803")
				.append("   and b.aaa805 = c.fcode")
				.append("   and c.fname='aaa805'")
				;
		List<Object> paramList = new ArrayList<>();
		if (this.isNotNull(qaad305)) 
		{
			sql.append(" and a.aad305 like ?");
			paramList.add(qaad305);
		}
		if (this.isNotNull(qaad307)) 
		{
			sql.append(" and a.aad307=?");
			paramList.add(qaad307);
		}
		return this.queryForList(sql.toString(),paramList.toArray());
	}
	/**
	 * 取消看房,将房间状态更改为可选
	 * @return
	 * @throws Exception
	 */
	public boolean cancelRoom()throws Exception
	{
		String sql="update aa08 set aaa805=? where aaa801=?";
		Object args[]={
				"01",
				this.get("aaa801")
		};
		return this.executeUpdate(sql, args)>0;
	}
}
