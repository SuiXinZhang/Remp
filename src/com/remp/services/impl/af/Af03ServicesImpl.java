package com.remp.services.impl.af;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

public class Af03ServicesImpl extends JdbcServicesSupport 
{
	public Map<String, String> orderTurnReceipt()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select aad103,aad111")
				.append("  from ad01")
				.append(" where aad101=?")
				;
		return this.queryForMap(sql.toString(), this.get("aad101"));
	}
	
	public Map<String, String> turnreceipt()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select aad403,aad413")
				.append("  from ad04")
				.append(" where aad401=?");
		return this.queryForMap(sql.toString(),this.get("aad401"));
	}
	public boolean add()throws Exception
	{
		StringBuilder sql1 = new StringBuilder()
				.append("insert into af03(aaf302,aaf303,aaf304,aaf305,aaf306,")
				.append("                 aaf307,aaf308,aaf309,aaf310,aaf311,")
				.append("                 aaf312)")
				.append("          values(?,?,?,?,?,")
				.append("                 ?,?,?,?,?,")
				.append("                 ?)")
				;
		Object args1[] = {
				this.get("aaf302"),
				this.get("aaf303"),
				this.get("aaf304"),
				this.get("aaf305"),
				this.get("aaf306"),
				this.get("aaf307"),
				this.get("aaf308"),
				this.get("aaf309"),
				this.get("aaf310"),
				this.get("aaf311"),
				this.get("aaf312")
		};
		
		StringBuilder sql2 = new StringBuilder()
				.append("insert into af04(aaf301,aaf402,aaf403,aaf404,aaf405,")
				.append("                 aaf406,aaf407,aaf408,aaf409,aaf410)")
				.append("          values(?,?,?,?,?,")
				.append("                 ?,?,?,?,?)")
				;
		Object args2[] = {
				Tools.getSequence("aaf301"),
				this.get("aaf304"),
				this.get("aaf403"),
				this.get("aaf404"),
				this.get("aaf405"),
				this.get("aaf406"),
				this.get("aaf407"),
				this.get("aaf408"),
				this.get("aaf409"),
				this.get("aaf410")
		};
		this.appendSql(sql1.toString(), args1);
		this.appendSql(sql2.toString(), args2);
		return this.executeTransaction();
	}

	public List<Map<String, String>> query()throws Exception
	{
		Object qaaf305 = this.get("qaaf305");
		Object qaaf302 = this.get("aaf302");
		StringBuilder sql = new StringBuilder()
				.append("select a.aaf301,a.aaf302,a.aaf303,a.aaf304,a.aaf305,")
				.append("       a.aaf306,a.aaf307,a.aaf308,a.aaf309,a.aaf310,")
				.append("       a.aaf311,a.aaf312,b.aaf401,b.aaf402,b.aaf403,")
				.append("       b.aaf404,b.aaf405,b.aaf406,b.aaf407,b.aaf408,")
				.append("       b.aaf409")
				.append("  from af03 a,af04 b")
				.append(" where a.aaf301=b.aaf301")
				;
		List<Object> paramList = new ArrayList<>();
		if (this.isNotNull(qaaf302)) 
		{
			sql.append(" and a.aaf302=?");
			paramList.add(qaaf302);
		}
		if (this.isNotNull(qaaf305)) 
		{
			sql.append(" and a.aaf305 like ?");
			paramList.add("%"+qaaf305+"%");
		}
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select aaf301,aaf302,aaf303,aaf304,aaf305,")
				.append("       aaf306,aaf307,aaf308,aaf309,aaf310,")
				.append("       aaf311,aaf312")
				.append("  from af03")
				.append(" where aaf301=?")
				;
		return this.queryForMap(sql.toString(), this.get("aaf301"));
	}
	public boolean modify()throws Exception
	{
		StringBuilder sql1 = new StringBuilder()
				.append("insert into af04(aaf301,aaf402,aaf403,aaf404,aaf405,")
				.append("                 aaf406,aaf407,aaf408,aaf409,aaf410)")
				.append("          values(?,?,?,?,?,")
				.append("                 ?,?,?,?,?)")
				;
		Object args1[]={
				this.get("aaf301"),
				this.get("aaf304"),
				this.get("aaf403"),
				this.get("aaf404"),
				this.get("aaf405"),
				this.get("aaf406"),
				this.get("aaf407"),
				this.get("aaf408"),
				this.get("aaf409"),
				this.get("aaf410")
		};
		String sql2 = "update af03 set aaf309 = ? where aaf301=?";
		Object args2[]={
				this.get("aaf309"),
				this.get("aaf301")
		};
		this.appendSql(sql1.toString(), args1);
		this.appendSql(sql2, args2);
		return this.executeTransaction();
	}
}
