package com.remp.services.impl.ae;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ae01ServiceImpl extends JdbcServicesSupport
{
	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select d.aad710,e.aae101,e.aae102,e.aae103,e.aae104,e.aae105,")
				.append("       e.aae106,e.aae107,e.aae108,e.aae109,e.aae110")
				.append("   from ae01 as e,ad07 as d")
				.append("   where aae101 = ? and e.aad701 = d.aad701")
				;
		return this.queryForMap(sql.toString(), this.get("aae101"));
	}
	
	public List<Map<String, String>> query()throws Exception
	{
		Object qaae104 = this.get("qaae104");
		Object qaad702 = this.get("qaad702");
		Object qaaa803 = this.get("qaaa803");
		StringBuilder sql = new StringBuilder()
				.append("select e.aae101,d.aad702,a.aaa803,c.aac407,e.aae102,")
				.append("       e.aae103,s.fvalue as snaae104,e.aae105")
				.append("       from aa08 a,ac04 c,ad07 d,ae01 e,syscode s")
				.append("       where true")
				;
		List<Object> paramList = new ArrayList<>();
		if(isNotNull(qaae104))
		{
			sql.append("	and e.aae104=?");
			paramList.add(qaae104);
		}
		if(isNotNull(qaad702))
		{
			sql.append("	and d.aad702 like ?");
			paramList.add("%"+qaad702+"%");
		}
		if(isNotNull(qaaa803))
		{
			sql.append("	and a.aaa803 like ?");
			paramList.add("%"+qaaa803+"%");
		}
		sql.append("     and a.aaa801 = d.aaa801 and c.aac401 = d.aac401 ")
			.append("    and e.aad701 = d.aad701 and s.fname='aae104' ")
			.append("    and e.aae104 = s.fcode");
		return this.queryForList(sql.toString(), paramList.toArray());
	}

	public boolean addAe01()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ae01(aad701,aae102,aae103,aae104,aae105,")
				.append("                 aae106,aae107,aae108,aae109,aae110)")
				.append("            values(?,?,?,?,?,")            
				.append("                   ?,?,?,?,?)")                   
				;
		Object args[] = new Object[]{
			this.get("aad701"),
			this.get("aae102"),	
			this.get("aae103"),
			this.get("aae104"),
			this.get("aae105"),
			this.get("aae106"),
			this.get("aae107"),
			this.get("aae108"),
			this.get("aae109"),
			this.get("aae110")
		};
		String sql1 = "update ad07 set aad723='1' where aad701 = ?";
		this.appendSql(sql.toString(), args);
		this.appendSql(sql1, this.get("aad701"));
		return this.executeTransaction();
	}
	
	public boolean modifyAe01()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ae01 ")
				.append("   set aae102=? ,aae103=?,aae104=?,aae105=?, ")            
				.append("    aae106=?,aae107=?,aae108=?,aae109=?,aae110=?   ")      
				.append("	where aae101 = ? ")
				;
		Object args[] = new Object[]{
			this.get("aae102"),
			this.get("aae103"),
			this.get("aae104"),
			this.get("aae105"),
			this.get("aae106"),
			this.get("aae107"),
			this.get("aae108"),
			this.get("aae109"),
			this.get("aae110"),
			this.get("aae101")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	/**
	 * ÅúÁ¿ÐÞ¸Ä
	 * @return
	 * @throws Exception
	 */
	public boolean modifyList()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ae01 ")
				.append("   set aae104=?,aae105=?, aae107=?,aae109=?,aae110=? ")            
				.append("	where aae101 = ? ")
				;
		Object stateList[] = new Object[]{
				this.get("aae104"),
				this.get("aae105"),
				this.get("aae107"),
				this.get("aae109"),
				this.get("aae110")
			};
		String idlist[] = this.getIdList("IdList");
		for(String id:idlist)
		{
			System.out.println(id);
		}
		return this.batchUpdate(sql.toString(), stateList, idlist);
	}
}
