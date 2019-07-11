package com.remp.services.impl.ac;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

public class Ac02SevicesImpl extends JdbcServicesSupport {

	@Override
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select aac201,aac202,aac203,aac204,aac205,")
				.append("       aac206,aac207,aac208,aac209,y.aac401,")
				.append("       aac402,aac403")
				.append("      from ac02 x,ac04 y")
				.append("     where x.aac401 = y.aac401 and aac201 = ?");
		Object args = this.get("aac201");
		System.out.println("**************"+args);
		return this.queryForMap(sql.toString(), args);
	}
	
	@Override
	public List<Map<String, String>> query() throws Exception {
		List<Object> args = new ArrayList<>();

		Object aac202 = this.get("qaac202");
		Object aac203 = this.get("qaac203");
		Object aac206 = this.get("qaac206");
		Object aac207 = this.get("qaac207");
		Object aac402 = this.get("qaac402");
		Object baac204 = this.get("baac204");
		Object eaac204 = this.get("eaac204");
		Object baac208 = this.get("baac208");
		Object eaac208 = this.get("eaac208");
		Object baac209 = this.get("baac209");
		Object eaac209 = this.get("eaac209");

		StringBuilder sql = new StringBuilder()
				.append("select x.aac201,x.aac202,x.aac203,x.aac204,x.aac205,")
				.append("		x.aac206,x.aac207,x.aac208,x.aac208,x.aac401,")
				.append("       y.aac402,y.aac401")
				.append("  from ac02 x,ac04 y")
				.append(" where x.aac401 = y.aac401 ");

		if (this.isNotNull(aac202)) {
			sql.append(" and aac202 like ?");
			args.add("%" + aac202 + "%");
		}
		if (this.isNotNull(aac203)) {
			sql.append(" and aac203 = ?");
			args.add(aac203);
		}
		if (this.isNotNull(aac206)) {
			sql.append(" and aac206 = ?");
			args.add(aac206);
		}
		if (this.isNotNull(aac207)) {
			sql.append(" and aac207 = ?");
			args.add(aac207);
		}
		if (this.isNotNull(aac402)) {
			sql.append(" and aac402 = ?");
			args.add(aac402);
		}
		if (this.isNotNull(baac204)) {
			sql.append(" and aac204 >= ?");
			args.add(baac204);
		}
		if (this.isNotNull(eaac204)) {
			sql.append(" and aac204 <= ?");
			args.add(eaac204);
		}
		if (this.isNotNull(baac204)) {
			sql.append(" and aac208 >= ?");
			args.add(baac204);
		}
		if (this.isNotNull(eaac204)) {
			sql.append(" and aac208 <= ?");
			args.add(eaac204);
		}
		if (this.isNotNull(baac204)) {
			sql.append(" and aac209 >= ?");
			args.add(baac204);
		}
		if (this.isNotNull(eaac204)) {
			sql.append(" and aac209 <= ?");
			args.add(eaac204);
		}
		List<Map<String, String>> rr = this.queryForList(sql.toString(), args.toArray());
		return rr;
	}
	
	private boolean modifyIntention() throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ac02 a")
    			.append("   set a.aac202=?,a.aac203=?,a.aac204=?,a.aac205=?,a.aac206=?,")
    			.append("       a.aac207=?,a.aac208=?,a.aac209=?")
    			.append(" where a.aac201=?");
		Object[] args=
			{
					this.get("aac202"),
					this.get("aac203"),
					this.get("aac204"),
					this.get("aac205"),
					this.get("aac206"),
					this.get("aac207"),
					this.get("aac208"),
					this.get("aac209"),
					this.get("aac201")
			};
		System.out.println(this.get("aac201"));
		System.out.println(this.get("aac202"));
		System.out.println(this.get("aac203"));
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	private boolean addIntention() throws Exception
	{
		Object aac201 = Tools.getSequence("aac201");
		this.put("aac201", aac201);
		StringBuilder sql = new StringBuilder()
				.append("insert into ac02(aac201,aac202,aac203,aac204,aac205,")
				.append("				  aac206,aac207,aac208,aac209,aac401)")
				.append("			values (?,?,?,?,?,")
				.append("					?,?,?,?,?)")
				;
		
		Object args[] = {
				aac201,
				this.get("aac202"),
				this.get("aac203"),
				this.get("aac204"),
				this.get("aac205"),
				this.get("aac206"),
				this.get("aac207"),
				this.get("aac208"),
				this.get("aac209"),
				this.get("aac401")
		};
		return this.executeUpdate(sql.toString(), args) >0;
	}
	
	
	private boolean deleteById() throws Exception
	{
		String sql = "delete from ac02 where aac201 = ?";
		Object args = this.get("aac201");
		return this.executeUpdate(sql, args)>0;
	}
	
	private boolean delete() throws Exception
	{
		String sql = "delete from ac02 where aac201 = ?";
		return this.batchUpdate(sql, this.getIdList("idlist"));
	}
}
