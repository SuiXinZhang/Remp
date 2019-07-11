package com.remp.services.impl.ac;

import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

public class Ac02SevicesImpl extends JdbcServicesSupport {

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
	
	@Override
	public Map<String, String> findById() throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select aac202,aac203,aac204,aac205,aac206,")
				.append("		aac207,aac208,aac209,aac401,aac201")
				.append("  from ac02 ")
				.append(" where aac201 = ?");
		
		Object[] args = 
			{
					this.get("aac201")
			};
		
		return this.queryForMap(sql.toString(), args);
	}
	
}
