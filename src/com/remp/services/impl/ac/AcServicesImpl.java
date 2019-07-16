package com.remp.services.impl.ac;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.MailTools;

public class AcServicesImpl extends JdbcServicesSupport {
	
	public List<Map<String,String>> findClientGroup(String qaac402,String qaac403)throws Exception
	{
		List<Object> args = new ArrayList<>();
		StringBuilder sql = new StringBuilder("select aac401,aac402,aac403,aac408 from ac04 where true");
		System.out.println(qaac402+"_----------------_"+qaac403);
		if(qaac402.length()!=2)
		{
			System.out.println(qaac402+"++");
			sql.append(" and aac402 = " +qaac402);
		}
		if(qaac403.length()!=2)
		{
			System.out.println(qaac403+"++++++");
			sql.append("and aac403 like %" + qaac403 + "%");
		}
		System.out.println(sql.toString());
		return this.queryForList(sql.toString());
	}
	
	public void sendMailTimer()throws Exception
	{
		StringBuilder sql1 = new StringBuilder()
				.append("select a.aac501,a.aac502,a.aac506")
				.append("  from ac05 a")
				.append(" where a.aac505 < CURRENT_TIMESTAMP ")
				.append("   and a.aac505 > DATE_SUB(NOW(),INTERVAL 30 MINUTE)")
				.append("   and a.aac504 = '01'");
				
		List<Map<String,String>> list = this.queryForList(sql1.toString());
		System.out.println(list);
		for(Map<String,String> tmp: list)
		{
			Object[] args1 = 
				{
					tmp.get("aac502"),
					tmp.get("aac506")
				};
			StringBuilder sql2 = new StringBuilder()
				.append("select y.aac408")
				.append("  from ac06 x,ac04 y")
				.append(" where x.aac401 = y.aac401 and x.aac501 = ?");
			
			List<Map<String,String>> list2 = this.queryForList(sql2.toString(), tmp.get("aac501"));
			System.out.println(list2);
			List<Object> args2 = new ArrayList<>();
			for(Map<String,String> tmp2: list2)
			{
				args2.add(tmp2.get("aac408"));
			}
			MailTools.setMimeMessage(args1, args2);
			//发送邮件
			//MailTools.send();
		}
		//发送后更改状态
		//this.stateToSent();
		
		
		System.out.println("runrunrunrunrunrunrun..................");
	}
	
	
	
	private boolean stateToSent() throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append(" update ac05")
				.append("	 set aac504 = '02'")
				.append("  where aac505 < CURRENT_TIMESTAMP ")
				 .append("   and aac505 > DATE_SUB(NOW(),INTERVAL 30 MINUTE)")
				 .append("	 and aac504 = '01'");
		
		return this.executeUpdate(sql.toString())>0;
	}
}
