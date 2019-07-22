package com.remp.services.impl.ad;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ad06ServicesImpl extends JdbcServicesSupport 
{
	public Map<String, String> turnApply()throws Exception
	{
		String sql = "select aac401,aad701,aad702,aad703 from ad07 where aad701=?";
		return this.queryForMap(sql, this.get("aad701"));
	}
	public boolean addApply()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ad06(aac401,aad602,aad603,aad604,aad605,")
				.append("                 aad606,aad607,aad608,aad609,aad610,")
				.append("                 aad611,aad701,aaa801)")
				.append("          values(?,?,?,?,?,")
				.append("                 ?,?,?,?,?,")
				.append("                 ?,?,?)")
				;
		Object args[] = {
				this.get("aac401"),
				this.get("aad602"),
				"无",
				this.get("aad604"),
				this.get("aad605"),
				this.get("aad606"),
				"无",
				"2019-07-01",
				"无",
				this.get("aad610"),
				this.get("aad611"),
				this.get("aad701"),
				this.get("aaa801")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	public List<Map<String, String>> query()throws Exception
	{
		Object qaad602 = this.get("qaad602");
		Object qaad605 = this.get("qaad605");
		StringBuilder sql= new StringBuilder()
				.append("select a.aad601,b.fvalue baad602,a.aad603,c.fvalue caad604,a.aad605,")
				.append("       a.aad606,a.aad607,a.aad608,a.aad609,a.aad610,")
				.append("       a.aad611")
				.append("  from ad06 a,syscode b,syscode c")
				.append(" where a.aad602=b.fcode and b.fname='aad602'")
				.append("   and a.aad604=c.fcode and c.fname='aad604'")
				;
		List<Object> paramList = new ArrayList<>();
		if(this.isNotNull(qaad605))
		{
			sql.append(" and a.aad605 like ?");
			paramList.add("%"+qaad605+"%");
		}
		if(this.isNotNull(qaad602))
		{
			sql.append(" and a.aad602=?");
			paramList.add(qaad602);
		}
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("select a.aad602,a.aad604,a.aad605,a.aad606,b.aad702,")
				.append("       b.aad703")
				.append("  from ad06 a, ad07 b")
				.append(" where a.aad601=? and b.aad701=a.aad701")
				;
		return this.queryForMap(sql.toString(), this.get("aad601"));
	}
	public boolean examineApply()throws Exception
	{
		String sql1 = "update ad06 set aad608=current_date,aad603=?,aad607=? where aad601=?";
		Object args1[]={
				"已审批",
				"BOSS",
				this.get("aad601")
		};
		String sql2 = "update ad06 a,ad07 b set b.aad719=? where a.aad601=? and b.aad701=a.aad701";
		Object args2[]={
				"05",
				this.get("aad601")
		};
		this.appendSql(sql1, args1);
		this.appendSql(sql2, args2);
		return this.executeTransaction();
	}
	public boolean batchExamine()throws Exception
	{
		//定义SQL语句,修改审批状态以及审批人
    	String sql1 = "update ad06 set aad608=current_date,aad603=?,aad607=? where aad601=?";
    	//获取stateList[]
    	Object stateList[] = {
    			"已审批",
    			"BOSS"
    	};
    	//修改合同状态
    	String sql2 = "update ad06 a,ad07 b set b.aad719=? where a.aad601=? and b.aad701=a.aad701";
    	//定义新状态
    	Object newState = "05";
    	String idlist[]=this.getIdList("idlist");
    	//执行
    	this.batchUpdate(sql1, stateList, idlist);
    	this.batchUpdate(sql2, newState, idlist);
    	return this.executeTransaction();
	}
}
