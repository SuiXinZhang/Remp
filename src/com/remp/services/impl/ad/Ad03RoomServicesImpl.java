package com.remp.services.impl.ad;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ad03RoomServicesImpl extends JdbcServicesSupport 
{
	public List<Map<String,String>> query()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("select a.aad301,a.aad302,a.aad303,a.aad304,a.aad305,")
				.append("       a.aad306,a.aad307,b.aaa801,c.fvalue caaa805")
				.append("  from ad03 a,aa08 b,syscode c")
				.append(" where a.aad302 = b.aaa803")
				.append("   and b.aaa805 = c.fcode")
				.append("   and c.fname='aaa805'")
				;
		return this.queryForList(sql.toString());
	}
	
	public boolean cancelRoom()throws Exception
	{
		String sql="update aa08 set aaa805=? where aaa801=?";
		Object args[]={
				"01",
				this.get("aaa801")
		};
		return this.executeUpdate(sql, args)>0;
	}

}
