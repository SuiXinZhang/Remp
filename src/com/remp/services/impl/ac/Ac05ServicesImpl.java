package com.remp.services.impl.ac;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.poi.hpsf.Array;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.MailTools;
import com.remp.system.tools.Tools;

public class Ac05ServicesImpl extends JdbcServicesSupport {
	
	
	private boolean delete()throws Exception
	{
//		String sql1 = "delete from ac05 where aac501 = ?";
//		this.appendBatch(sql1, this.getIdList("aac501"));
		String sql2 = "delete from ac06 where aac601 = ?";
		this.appendBatch(sql2, this.getIdList("idlist"));
		return this.executeTransaction();
	}

	private boolean deleteById() throws Exception
	{
//		String sql1 = "delete from ac05 where aac501 = ?";
//		this.appendSql(sql1, this.get("aac501"));
		String sql2 = "delete from ac06 where aac601 = ?";
		this.appendSql(sql2, this.get("aac601"));
		return this.executeTransaction();
	}
	
	private boolean add() throws Exception
	{
		int aac501 = Tools.getSequence("aac501");
		this.put("aac501", aac501);
		StringBuilder sql1 = new StringBuilder()
				.append("insert into ac05(aac501,aac502,aac503,aac504,aac505,")
				.append("                 aac506,aac507,aac508,aac509)")
				.append("          values(?,?,?,?,?,")
				.append("                 ?,?,current_timestamp,?)");
		Object[] args1 = 
			{
					aac501,
					this.get("aac502"),
					this.get("aac503"),
					"01",
					this.get("aac505"),
					this.get("aac506"),
					this.get("aac507"),
					this.get("aac509")
			};
		this.appendSql(sql1.toString(), args1);
		
		String sql2 = "insert into ac06(aac501,aac401) values(?,?)";
		this.appendBatch(sql2, aac501, this.getIdList("idlist"));
		
		return this.executeTransaction();
	}
	
	@Override
	public List<Map<String, String>> query() throws Exception 
	{
		Object aac402 = this.get("qaac402");
		Object aac403 = this.get("qaac403");
		Object aac503 = this.get("qaac503");
		Object aac504 = this.get("qaac504");
		Object aac507 = this.get("qaac507");
		Object aac509 = this.get("qaac509");
		Object baac508 = this.get("baac508");
		Object eaac508 = this.get("eaac508");
		
		StringBuilder sql = new StringBuilder()
				.append("select a.aac402,a.aac403,b.aac501,b.aac502,b.aac503,")
				.append("	  	d.fvalue as cnaac504,e.fvalue as cnaac509,")
				.append("		b.aac505,b.aac506,b.aac507,b.aac508,c.aac601")
				.append("  from ac04 a,ac05 b,ac06 c,syscode d,syscode e")
				.append(" where c.aac401 = a.aac401 and c.aac501 = b.aac501")
				.append("	and b.aac504 = d.fcode and d.fname = 'aac504'")
				.append("	and b.aac509 = e.fcode and e.fname = 'aac509'");
		
		List<Object> args = new ArrayList<>();
		
		if (this.isNotNull(aac403)) {
			sql.append(" and aac403 like ?");
			args.add("%" + aac403 + "%");
		}
		if (this.isNotNull(aac402)) {
			sql.append(" and aac402 = ?");
			args.add(aac402);
		}
		if (this.isNotNull(aac503)) {
			sql.append(" and aac503 = ?");
			args.add(aac503);
		}
		if (this.isNotNull(aac504)) {
			sql.append(" and aac504 = ?");
			args.add(aac504);
		}
		if (this.isNotNull(aac507)) {
			sql.append(" and aac507 like ?");
			args.add("%" + aac507 + "%");
		}
		if (this.isNotNull(aac509)) {
			sql.append(" and aac509 = ?");
			args.add(aac509);
		}
		if (this.isNotNull(baac508)) {
			sql.append(" and aac508 >= ?");
			args.add(baac508);
		}
		if (this.isNotNull(eaac508)) {
			sql.append(" and aac508 <= ?");
			args.add(eaac508);
		}
		
		System.out.println(args);
		System.out.println(sql);
		return this.queryForList(sql.toString(), args.toArray());
	}
	
	@Override
	public Map<String, String> findById() throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select aac501,aac502,aac503,aac504,aac505,")
				.append("       aac506,aac507,aac509")
				.append("  from ac05 ")
				.append(" where aac501 = ?");
		Object args = this.get("aac501");
		
		return this.queryForMap(sql.toString(), args);
	}
}
