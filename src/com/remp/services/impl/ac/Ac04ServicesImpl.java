package com.remp.services.impl.ac;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

public class Ac04ServicesImpl extends JdbcServicesSupport {
	
	private boolean add() throws Exception
	{
		int aac401 = Tools.getSequence("aac401");
		String aac402 = Tools.getEmpNumber("aac402");
		this.put("aac402", aac402);
		this.put("aac401", aac401);
		StringBuilder sql = new StringBuilder()
				.append("insert into ac04(aac401,aac402,aac403,aac404,aac405,")
				.append("                 aac406,aac407,aac408,aac409,aac410,")
				.append("                 aac411,aac412,aac413,aac414,aac415,")
				.append("                 aac416)")
				.append("			values (?,?,?,?,?,")
				.append("					?,?,?,?,?,")
				.append("					?,?,?,?,?,")
				.append("                   ?)");
		Object args[] = 
			{
					aac401,
					aac402,
					this.get("aac403"),
					this.get("aac404"),
					this.get("aac405"),
					this.get("aac406"),
					this.get("aac407"),
					
					this.get("aac408"),
					this.get("aac409"),
					this.get("aac410"),
					this.get("aac411"),
					this.get("aac412"),
					this.get("aac413"),
					this.get("aac414"),
					this.get("aac415"),
					this.get("aac416"),
			};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	private boolean modify() throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ac04 a")
    			.append("   set a.aac403=?,a.aac404=?,a.aac405=?,a.aac406=?,a.aac407=?,")
    			.append("       a.aac408=?,a.aac409=?,a.aac410=?,a.aac411=?,a.aac412=?,")
    			.append("       a.aac413=?,a.aac414=?,a.aac415=?,a.aac416=?")
    			.append(" where a.aac401=?");
		Object[] args=
			{
					this.get("aac403"),
					this.get("aac404"),
					this.get("aac405"),
					this.get("aac406"),
					this.get("aac407"),
					
					this.get("aac408"),
					this.get("aac409"),
					this.get("aac410"),
					this.get("aac411"),
					this.get("aac412"),
					
					this.get("aac413"),
					this.get("aac414"),
					this.get("aac415"),
					this.get("aac416"),
					this.get("aac401")
			};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	private boolean deleteById() throws Exception
	{
		String sql = "delete from ac04 where aac401 = ?";
		Object args = this.get("aac401");
		return this.executeUpdate(sql, args)>0;
	}
	
	private boolean delete() throws Exception
	{
		String sql = "delete from ac04 where aac401 = ?";
		return this.batchUpdate(sql, this.getIdList("idlist"));
	}
	
	@Override
	public List<Map<String, String>> query() throws Exception {
		
		Object aac402 = this.get("qaac402");
		Object aac403 = this.get("qaac403");
		Object aac405 = this.get("qaac405");
		Object aac407 = this.get("qaac407");
		StringBuilder sql = new StringBuilder()
				.append("select aac401,aac402,aac403,b.fvalue as cnaac404,c.fvalue as cnaac406,")
				.append("       aac407,aac408,aac410,aac413")
				.append("  from ac04 a,syscode b,syscode c")
				.append(" where a.aac404 = b.fcode and b.fname = 'aac404' ")
				.append("   and a.aac406 = c.fcode and c.fname = 'aac406' ");
		List<Object> args = new ArrayList<>();
		
		if (this.isNotNull(aac403)) {
			sql.append(" and aac403 like ?");
			args.add("%" + aac403 + "%");
		}
		if (this.isNotNull(aac402)) {
			sql.append(" and aac402 = ?");
			args.add(aac402);
		}
		if (this.isNotNull(aac405)) {
			sql.append(" and aac405 = ?");
			args.add(aac405);
		}
		if (this.isNotNull(aac407)) {
			sql.append(" and aac407 = ?");
			args.add(aac407);
		}
		System.out.println(sql);
		System.out.println(aac402);
		System.out.println(aac403);
		return this.queryForList(sql.toString(), args.toArray());
	}
	
	@Override
	public Map<String, String> findById() throws Exception {
		String tag = (String) this.get("tag");
		String aac401 = null;
		if("1".equals(tag))
		{
			String sql = "select  aac105,aac106 from ac01 where aac101 = ?";
			Map<String,String> ac01Map = this.queryForMap(sql, this.get("aac101")); 
			
			
			aac401 = String.valueOf(Tools.getSequence("aac401"));
			String aac402 = Tools.getEmpNumber("aac402");
			StringBuilder sql1 = new StringBuilder()
					.append("insert into ac04(aac401,aac402,aac101,aac403,aac407)")
					.append("            values(?,?,?,?,?)");
			Object[] args1 = 
				{
						aac401,
						aac402,
						this.get("aac101"),
						ac01Map.get("aac105"),
						ac01Map.get("aac106")
				};
//			this.put("aac401", aac401);
//			this.put("aac402", aac402);
//			this.put("aac403", this.get("aac105"));
//			this.executeUpdate(sql1.toString(),args1);
			this.appendSql(sql1.toString(), args1);
			
			
			String sql2 = "update ac01 set aac111='ряв╙' where aac101 = ?";
			Object args2 = this.get("aac101");
			this.appendSql(sql2, args2);
			
			this.executeTransaction();
		}
		else
		{
			aac401 = String.valueOf(this.get("aac401"));
		}
		StringBuilder sql3 = new StringBuilder()
				.append("select aac402,aac403,aac404,aac405,aac406,")
				.append("		aac407,aac408,aac409,aac410,aac411,")
				.append("       aac412,aac413,aac414,aac415,aac416,")
				.append("       aac101,aac401")
				.append("  from ac04 ")
				.append(" where aac401 = ?");
		
		Object args3 = aac401;
		return this.queryForMap(sql3.toString(), args3);
	}
}
