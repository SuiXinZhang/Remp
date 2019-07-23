package com.remp.services.impl.ae;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class AeInfoServiceImpl extends JdbcServicesSupport 
{
	public Map<String, String> showAe01Info()throws Exception
	{
		String sql1 = "select aae101,aae104 from ae01";
		Map<String, String> dto = new HashMap<>(); 
		List<Map<String,String>> datas = this.queryForList(sql1);
		int state1 = 0,state2 = 0;
		for(Map<String, String> data:datas)
		{
			if(data.get("aae104").equals("0"))
			{
				state1++;
			}
			else
			{
				state2++;
			}
		}
		dto.put("state1", String.valueOf(state1));
		dto.put("state2", String.valueOf(state2));
		return dto;
	}
	public List<Map<String, String>> getAe01date()throws Exception
	{
		String sql = "select date_format(aae103,'%Y-%m') as mon,count(aae101) as num from ae01 group by mon order by mon";
		return this.queryForList(sql);
	}
	
	public Map<String, String> showAe02Info()throws Exception
	{
		String sql1 = "select aae201,aae217,aae218 from ae02";
		Map<String, String> dto = new HashMap<>(); 
		List<Map<String,String>> datas = this.queryForList(sql1);
		int type101 = 0,type102 = 0,type201=0,type202=0;
		for(Map<String, String> data:datas)
		{
			if(data.get("aae217").equals("01"))
			{
				if(data.get("aae218").equals("01"))
				{
					type101++;
				}
				else {
					type102++;
				}
			}
			else
			{
				if(data.get("aae218").equals("01"))
				{
					type201++;
				}
				else {
					type202++;
				}
			}
		}
		dto.put("type101", String.valueOf(type101));
		dto.put("type102", String.valueOf(type102));
		dto.put("type201", String.valueOf(type201));
		dto.put("type202", String.valueOf(type202));
		return dto;
	}
	public List<Map<String, String>> getAe02date()throws Exception
	{
		String sql = "select date_format(aae207,'%Y-%m') as mon,count(aae201) as num from ae02 group by mon order by mon";
		return this.queryForList(sql);
	}
	
	public Map<String, String> showAe04Info()throws Exception
	{
		String sql1 = "select aae401,aae411 from ae04";
		Map<String, String> dto = new HashMap<>(); 
		List<Map<String,String>> datas = this.queryForList(sql1);
		int state1 = 0,state2 = 0;
		for(Map<String, String> data:datas)
		{
			if(data.get("aae411").equals("01"))
			{
				state1++;
			}
			else
			{
				state2++;
			}
		}
		dto.put("state1", String.valueOf(state1));
		dto.put("state2", String.valueOf(state2));
		return dto;
	}
	
	public List<Map<String, String>> getAe04date()throws Exception
	{
		String sql = "select date_format(aae410,'%Y-%m') as mon,count(aae401) as num from ae04 group by mon order by mon";
		return this.queryForList(sql);
	}
	public Map<String, String> showAe05Info()throws Exception
	{
		String sql1 = "select aae701,aae704 from ae07";
		Map<String, String> dto = new HashMap<>(); 
		List<Map<String,String>> datas = this.queryForList(sql1);
		int state1 = 0,state2 = 0;
		for(Map<String, String> data:datas)
		{
			if(data.get("aae704").equals("01"))
			{
				state1++;
			}
			else
			{
				state2++;
			}
		}
		dto.put("state1", String.valueOf(state1));
		dto.put("state2", String.valueOf(state2));
		return dto;
	}
	
	public List<Map<String, String>> getAe05date()throws Exception
	{
		String sql = "select date_format(aae506,'%Y-%m') as mon,count(aae501) as num from ae05 group by mon order by mon";
		return this.queryForList(sql);
	}
}
