package com.remp.services.impl.af;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.poi.hpsf.Array;

import com.remp.services.JdbcServicesSupport;

public class Af02ServicesImpl extends JdbcServicesSupport {
	
	private boolean receiveNote() throws Exception
	{
		
		//StringBuilder
		return true;
	}

	@Override
	public List<Map<String, String>> query() throws Exception 
	{
		Object aaf207 = this.get("qaaf207");
		StringBuilder sql = new StringBuilder()
				.append("select aaf201,aaf202,aaf205,aaf206,aaf207,")
				.append("       aaf209,aaf210,aaf211")
				.append("  from af02")
				.append(" where true");
		List<Object> args = new ArrayList<>();
		if(isNotNull(aaf207))
		{
			sql.append(" and aaf207 = ?");
			args.add(aaf207);
		}
		
		return this.queryForList(sql.toString(), args.toArray());
	}
}
