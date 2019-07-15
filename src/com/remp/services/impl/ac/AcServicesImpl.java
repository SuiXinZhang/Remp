package com.remp.services.impl.ac;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

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
}
