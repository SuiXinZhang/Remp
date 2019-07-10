package com.remp.services.impl.ae;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import com.remp.services.JdbcServicesSupport;

public class Ae02ServiceImpl extends JdbcServicesSupport 
{
	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select aae201,aae202,aae203,aae204,aae205,")
				.append("       aae206,aae207,aae208,aae209,aae210,")
				.append("       aae211,aae212,aae213,aae214,aae215,")
				.append("       aae216,aae217")
				.append("   from ae02")
				.append("   where aae201 = ?")
				;
		return this.queryForMap(sql.toString(), this.get("aae201"));
	}
	
	public boolean addae02()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ae02(aae202,aae203,aae204,aae205,aae206,")
				.append("                 aae207,aae208,aae209,aae210,aae211,")
				.append("                 aae212,aae213,aae214,aae215,aae216,")
				.append("                 aae217,aae218)")
				.append("          values(?,?,?,?,?,")
				.append("                 ?,?,?,?,?,")
				.append("                 ?,?,?,?,?,")
				.append("                 ?,?)")
				;
		Object args[] = new Object[]{
				this.get("aae202"),
				this.get("aae203"),
				this.get("aae204"),
				this.get("aae205"),
				this.get("aae206"),
				this.get("aae207"),
				this.get("aae208"),
				this.get("aae209"),
				this.get("aae210"),
				this.get("aae211"),
				this.get("aae212"),
				this.get("aae213"),
				this.get("aae214"),
				this.get("aae215"),
				this.get("aae216"),
				this.get("aae217"),
				"01"
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	public List<Map<String,String>> query()throws Exception
	{
		Object qaae218 = this.get("qaae218");
		Object qaae202 = this.get("qaae202");
		Object qaae204 = this.get("qaae204");
		StringBuilder sql = new StringBuilder()
				.append("select  e.aae201,e.aae202,e.aae203,e.aae204,e.aae214,")
				.append("        e.aae215,s.fvalue as snaae218")
				.append("   from ae02  as e,syscode as s")
				.append(" where true")
				;
		List<Object> paramList = new ArrayList<>();
		if(isNotNull(qaae202))
		{
			sql.append(" and e.aae202 like ?");
			paramList.add("%"+qaae202+"%");
		}
		if(isNotNull(qaae204))
		{
			sql.append(" and e.aae204 like ?");
			paramList.add("%"+qaae204+"%");
		}
		if(isNotNull(qaae218))
		{
			sql.append(" and e.aae218 = ?");
			paramList.add(qaae218);
		}
		sql.append(" and s.fname='aae218' ")
			.append(" and e.aae218 = s.fcode");
		System.out.println(sql.toString());
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	
	public boolean modify()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ae02 ")
				.append("   set aae202=? ,aae203=?,aae204=?,aae205=?, ")            
				.append("    aae206=?,aae207=?,aae208=?,aae209=?,aae210=?,")     
				.append("    aae211=?,aae212=?,aae213=?,aae214=?,aae215=?,") 
				.append("    aae216=?,aae217=?") 
				.append("	where aae201 = ? ")
				;
		Object args[] = new Object[]{
			this.get("aae202"),
			this.get("aae203"),
			this.get("aae204"),
			this.get("aae205"),
			this.get("aae206"),
			this.get("aae207"),
			this.get("aae208"),
			this.get("aae209"),
			this.get("aae210"),
			this.get("aae211"),
			this.get("aae212"),
			this.get("aae213"),
			this.get("aae214"),
			this.get("aae215"),
			this.get("aae216"),
			this.get("aae217"),
			this.get("aae201")
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
		StringBuilder sql1 = new StringBuilder()
				.append("insert into ae06(aae201,aae602,aae603,aae604,aae605) ")
				.append("  values(?,?,?,?,?)")
				;
		Object idList[] = this.getIdList("IdList");
		String sql2 = "update ae02 set aae218 = ? where aae201=?";
		for(Object id:idList)
		{
			Object args1 []= new Object[]{	
					id,
					this.get("aae602"),
					this.get("aae603"),
					this.get("aae604"),
					this.get("aae605")
			};
			Object args2 []= new Object[]{	this.get("aae218"),id	};
			this.appendSql(sql1.toString(), args1);
			this.appendSql(sql2, args2);
		}
		return this.executeTransaction();
	}
}
