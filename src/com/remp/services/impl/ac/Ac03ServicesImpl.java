package com.remp.services.impl.ac;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

public class Ac03ServicesImpl extends JdbcServicesSupport {
	
	private boolean modifyFollow() throws Exception
	{
		String sql = "update ac03 set aac306 = ? , aac307 = ? where aac301 = ?";
		Object[] stateList = 
		{
				this.get("maac306"),
				this.get("maac307")
		};
		System.out.println(this.get("maac306"));
		System.out.println(this.get("maac307"));
		return this.batchUpdate(sql, stateList, this.getIdList("idlist"));
	}
	
	private boolean batchUpdate() throws Exception
	{
		System.out.println(this.getIdList("idlist"));
		System.out.println(this.get("maac304"));
		String sql = "update ac03 set aac304 = ? where aac301 = ?";
		return this.batchUpdate(sql, this.get("maac304"),this.getIdList("idlist"));
	}
	
	private boolean modify() throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ac03 a")
    			.append("   set a.aac401=?,a.aac303=?,a.aac304=?,a.aac305=?,a.aac306=?,")
    			.append("       a.aac307=?")
    			.append(" where a.aac301=?");
		Object[] args=
			{
					this.get("aac401"),
					this.get("aac303"),
					this.get("aac304"),
					this.get("aac305"),
					this.get("aac306"),
					this.get("aac307"),
					this.get("aac301")
			};
		return this.executeUpdate(sql.toString(), args)>0;
	}

	private boolean add() throws Exception
	{
		Object aac301 = Tools.getSequence("aac301");
		this.put("aac301", aac301);
		System.out.println(this.get("aac301"));
		StringBuilder sql = new StringBuilder()
				.append("insert into ac03(aac301,aac401,aac303,aac304,aac305,")
				.append("				  aac306,aac307)")
				.append("			values (?,?,?,?,?,")
				.append("					?,?)")
				;
		
		Object args[] = {
				aac301,
				this.get("aac401"),
				this.get("aac303"),
				this.get("aac304"),
				this.get("aac305"),
				this.get("aac306"),
				this.get("aac307"),
		};
		return this.executeUpdate(sql.toString(), args) >0;
	}
	
	private boolean deleteById() throws Exception
	{
		String sql = "delete from ac03 where aac301 = ?";
		return this.executeUpdate(sql, this.get("aac301"))>0;
	}
	
	private boolean delete() throws Exception
	{
		String sql  = "delete from ac03 where aac301 = ?";
		System.out.println(this.getIdList("idlist"));
		return this.batchUpdate(sql, this.getIdList("idlist"));
	}
	
	@Override
	public List<Map<String, String>> query() throws Exception 
	{
		Object aac402 = this.get("qaac402");
		Object aac403 = this.get("qaac403");
		Object aac304 = this.get("qaac304");
		Object aac306 = this.get("qaac306");
		Object aac307 = this.get("qaac307");
		Object baac305 = this.get("baac305");
		Object eaac305 = this.get("eaac305");
		List<Object> args = new ArrayList<>();
		
		StringBuilder sql = new StringBuilder()
				.append("select x.aac301,x.aac401,x.aac303,z.fvalue as cnaac304,x.aac305,")
				.append("       x.aac306,x.aac307,y.aac402,y.aac403")
				.append("  from ac03 x,ac04 y,syscode z")
				.append(" where x.aac401 = y.aac401 and")
				.append("       x.aac304 = z.fcode and z.fname = 'aac304'");
		
		if (this.isNotNull(aac403)) {
			sql.append(" and aac403 like ?");
			args.add("%" + aac403 + "%");
		}
		if (this.isNotNull(aac402)) {
			sql.append(" and aac402 = ?");
			args.add(aac402);
		}
		if (this.isNotNull(aac306)) {
			sql.append(" and aac306 like ?");
			args.add(aac306);
		}
		if (this.isNotNull(aac307)) {
			sql.append(" and aac307 = ?");
			args.add(aac307);
		}
		if (this.isNotNull(aac304)) {
			sql.append(" and aac304 = ?");
			args.add(aac304);
		}
		if (this.isNotNull(baac305)) {
			sql.append(" and aac305 >= ?");
			args.add(baac305);
		}
		if (this.isNotNull(eaac305)) {
			sql.append(" and aac305 <= ?");
			args.add(eaac305);
		}
		
		return this.queryForList(sql.toString(), args.toArray());
	}
	
	@Override
	public Map<String, String> findById() throws Exception 
	{
		StringBuilder sql = new StringBuilder()
				.append("select x.aac301,x.aac401,x.aac303,z.fvalue as cnaac304,x.aac305,")
				.append("       x.aac306,x.aac307,y.aac402,y.aac403")
				.append("  from ac03 x,ac04 y,syscode z")
				.append(" where x.aac401 = y.aac401 and ")
				.append("       x.aac304 = z.fcode and z.fname = 'aac304' and")
				.append("       x.aac301 = ?");
		Object args = this.get("aac301");
		System.out.println(this.get("aac301"));
		return this.queryForMap(sql.toString(), args);
	}
}
