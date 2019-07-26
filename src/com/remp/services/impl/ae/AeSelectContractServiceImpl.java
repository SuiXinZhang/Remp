package com.remp.services.impl.ae;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class AeSelectContractServiceImpl extends JdbcServicesSupport 
{
	public List<Map<String, String>> query()throws Exception
	{
		Object qaad702=this.get("qaad702");    //客户名称
		Object qaad703=this.get("qaad703");    //房间编号
		Object qaad716=this.get("qaad716");    //签署日期
		Object qaad720=this.get("qaad720");    //业务员
		System.out.println(qaad702);
		System.out.println(qaad703);
		System.out.println(qaad716);
		System.out.println(qaad720);
		StringBuilder sql = new StringBuilder()
				.append("select a.aad701,a.aac401,a.aad702,a.aad703,c.fvalue caad704,")
				.append("       a.aad705,a.aad711,b.fvalue baad712,a.aad716,d.fvalue daad719,")
				.append("       a.aad720,a.aac401,a.aad723")
				.append("  from ad07 a,syscode b,syscode c,syscode d")
				.append(" where a.aad712=b.fcode and b.fname='aad712'")
				.append("   and a.aad704=c.fcode and c.fname='aad704'")
				.append("   and a.aad719=d.fcode and d.fname='aad719'")
				;
		List<Object> paramList=new ArrayList<>();
		if(this.isNotNull(qaad702))
		{
			sql.append(" and a.aad702 like ?");
			paramList.add("%"+qaad702+"%");
		}
		if (this.isNotNull(qaad703)) 
		{
			sql.append(" and a.aad703 like ?");
			paramList.add("%"+qaad703+"%");
		}
		if (this.isNotNull(qaad716)) 
		{
			sql.append(" and a.aad716 = ?");
			paramList.add(qaad716);
		}
		if (this.isNotNull(qaad720)) 
		{
			sql.append(" and a.aad720 like ?");
			paramList.add("%"+qaad720+"%");
		}
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	
	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select x.aad701,x.aac401,x.aad702,x.aad703,x.aad704,")
				.append("       x.aad705,x.aad706,x.aad707,x.aad708,x.aad709,")
				.append("       x.aad710,x.aad711,x.aad712,x.aad713,x.aad714,")
				.append("       x.aad715,x.aad716,x.aad717,x.aad718,x.aad719,")
				.append("       x.aad720,x.aad721,x.aad722,a.aaa504,s.fvalue saaa805,")
				.append("       a.aaa505,a.aaa506,b.aaa808,b.aaa810")
				.append("  from ad07 x,aa05 a,aa08 b,ac04 c,syscode s")
				.append(" where x.aad701=? and x.aac401=c.aac401")
				.append("   and x.aaa801=b.aaa801 and b.aaa807=a.aaa502")
				.append("   and b.aaa805=s.fcode  and s.fname='aaa805'")
				;
		return this.queryForMap(sql.toString(), this.get("aad701"));
	}
}
