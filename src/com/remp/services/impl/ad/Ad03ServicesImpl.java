package com.remp.services.impl.ad;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

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
		this.appendSql(sql1.toString(), args1);
		String sql2 = "update aa08 set aaa805=? where aaa801=?";
		Object args2[]={
				"04",
				this.get("aaa801")
		};
		this.appendSql(sql2, args2);
		int aad301 = Tools.getSequence("aad301");
		String sql4 = "update ad01 a,ad03 b set a.aad116='已失效' where b.aad301=? and b.aad304=a.aad104";
		this.appendSql(sql4, aad301);
		return this.executeTransaction();
	}
	/**
	 * 获取房号
	 */
	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql =new StringBuilder()
				.append("select a.aad103,a.aaa801,a.aad104,a.aad108,a.aad110,")
				.append("       a.aac401")
				.append("  from ad01 a,aa08 b ")
				.append(" where b.aaa801=? and a.aaa801=b.aaa801")
				.append("   and a.aad116='已预约'")
				;
		return this.queryForMap(sql.toString(), this.get("aaa801"));
	}
	/**
	 * 验证预约记录房间号,客户名称与项目排号是否与输入内容相符
	 * @return
	 * @throws Exception
	 */
	public Map<String, String> findByName()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select aac401,aad116,aaa801 ")
				.append("  from ad01")
				.append(" where aad103=? and aad104=? and aad108=? and aad110=?")
				.append("   and aad116=? ") 
				;
		Object args[]={
				this.get("aad305"),
				this.get("aad304"),
				this.get("aad303"),
				this.get("aad302"),
				"已预约"
		};
		return this.queryForMap(sql.toString(), args);
	}
	/**
	 * 查询看房记录
	 */
	public List<Map<String,String>> query()throws Exception
	{
		Object qaad305 = this.get("qaad305");
		Object qaad307 = this.get("qaad307");
		Object qaad302 = this.get("qaad302");
		StringBuilder sql=new StringBuilder()
				.append("select a.aad301,a.aad302,a.aad303,a.aad304,a.aad305,")
				.append("       a.aad306,a.aad307,b.aaa801,c.fvalue caaa805,a.aac401")
				.append("  from ad03 a,aa08 b,syscode c")
				.append(" where a.aaa801 = b.aaa801")
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
		if (this.isNotNull(qaad302)) 
		{
			sql.append(" and a.aad302=?");
			paramList.add(qaad302);
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
		String sql2 = "update ad01 a,ad03 b set a.aad116='已失效' where b.aad301=? and b.aad304=a.aad104";
		this.appendSql(sql, args);
		this.appendSql(sql2, this.get("aad301"));
		return this.executeTransaction();
	}
}
