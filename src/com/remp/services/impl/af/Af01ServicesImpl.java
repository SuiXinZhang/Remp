package com.remp.services.impl.af;


import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

public class Af01ServicesImpl extends JdbcServicesSupport {

	private boolean add() throws Exception
	{
		int aaf101 = Tools.getSequence("aaf101");
		this.put("aaf101", aaf101);
		StringBuilder sql1 = new StringBuilder()
				.append("insert into af01(aaf101,aaf102,aaf103,aaf104,aaf105,")
				.append("                 aaf106,aaf107,aaf108,aaf109,aaf110,")
				.append("                 aaf111,aaf112)")
				.append("          values (?,?,?,?,?,")
				.append("                  ?,?,?,?,?,")
				.append("                  ?,?)");
		Object args1[] = 
		{
				aaf101,
				this.get("aaf102"),
				this.get("aaf103"),
				this.get("aaf104"),
				this.get("aaf105"),
				this.get("aaf106"),
				this.get("aaf107"),
				this.get("aaf108"),
				this.get("aaf109"),
				this.get("aaf110"),
				this.get("aaf111"),
				this.get("aaf112")
		};
		this.appendSql(sql1.toString(), args1);
		
		int aaf201 = Tools.getSequence("aaf201");
		this.put("aaf201", aaf201);
		StringBuilder sql2 = new StringBuilder()
				.append("insert into af02(aaf201,aaf202,aaf203,aaf204,aaf207)")
				.append("         values (?,?,?,?,'1')");
		Object args2[] = 
		{
					aaf201,
					this.get("aaf105"),
					this.get("aaf106"),
					this.get("aaf107"),
		};
		this.appendSql(sql2.toString(), args2);
		
		return this.executeTransaction();
	}
	

}
