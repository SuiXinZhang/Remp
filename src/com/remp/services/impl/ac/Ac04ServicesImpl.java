package com.remp.services.impl.ac;

import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

public class Ac04ServicesImpl extends JdbcServicesSupport {
	
	@Override
	public Map<String, String> findById() throws Exception {
		String tag = (String) this.get("tag");
		String aac401 = null;
		if(tag.equals("1"))
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
			
			
			String sql2 = "update ac01 set aac111='1' where aac101 = ?";
			Object args2 = this.get("aac101");
			this.appendSql(sql2, args2);
			
			this.executeTransaction();
		}
		else
		{
			aac401 = (String) this.get("aac401");
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
