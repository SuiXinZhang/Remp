package com.remp.services.impl.ac;

import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ac05ServicesImpl extends JdbcServicesSupport {

	private boolean add() throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ac05(aac503,aac504,aac505,aac506,aac507,")
				.append("                 aac508,aac509,aac401)")
				.append("          values(?,?,?,?,?,")
				.append("                 current_timestamp,?,?)");
		Object[] stateList = 
			{
					this.get("aac503"),
					"01",
					this.get("aac505"),
					this.get("aac506"),
					this.get("aac507"),
					this.get("aac509")
			};
		System.out.println(this.getIdList("idlist"));
		return this.batchUpdate(sql.toString(), stateList, this.getIdList("idlist"));
	}
	
	@Override
	public Map<String, String> findById() throws Exception
	{
		
		return super.findById();
	}
}
