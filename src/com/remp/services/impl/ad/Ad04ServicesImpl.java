package com.remp.services.impl.ad;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ad04ServicesImpl extends JdbcServicesSupport 
{

	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select d.aad301,d.aad302,d.aad305,y.fvalue yaaa504,s.fvalue saaa805,")
				.append("       a.aaa505,a.aaa506,b.aaa808,b.aaa810,d.aac401")
				.append("  from aa05 a,aa08 b,ad03 d,syscode s,syscode y")
				.append(" where d.aad301=? and d.aaa801=b.aaa801")
				.append("   and b.aaa807=a.aaa502 and b.aaa805=s.fcode")
				.append("   and s.fname='aaa805'  and a.aaa504=y.fcode")
				.append("   and y.fname='aaa504'")
				;
		return this.queryForMap(sql.toString(), this.get("aad301"));
	}
	public boolean addPurchase()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ad04(aac401,aad402,aad403,aad404,aad405,")
				.append("                 aad406,aad407,aad408,aad409,aad410,")
				.append("                 aad411,aad412,aad413,aad414,aad415,")
				.append("                 aad416,aad417,aad418,aad419,aad420,")
				.append("                 aad421)")
				.append("          values(?,?,?,?,?,")
				.append("                 ?,?,?,?,?,")
				.append("                 ?,?,?,?,?,")
				.append("                 ?,?,?,?,?,")
				.append("                 ?)")
				;
		Object args[] = {
				this.get("aac401"),
				this.get("aad402"),
				this.get("aad403"),
				this.get("aad404"),
				this.get("aad405"),
				this.get("aad406"),
				this.get("aad407"),
				this.get("aad408"),
				this.get("aad409"),
				this.get("aad410"),
				this.get("aad411"),
				this.get("aad412"),
				this.get("aad413"),
				this.get("aad414"),
				this.get("aad415"),
				this.get("aad416"),
				this.get("aad417"),
				this.get("aad418"),
				this.get("aad419"),
				this.get("aad420"),
				this.get("aad421"),
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	public List<Map<String, String>> query()throws Exception
	{
		Object qaad402=this.get("qaad402");    //客户名称
		Object qaad403=this.get("qaad403");    //房间编号
		StringBuilder sql = new StringBuilder()
				.append("select a.aad401,a.aac401,a.aad402,a.aad403,c.fvalue caad404,")
				.append("       a.aad405,a.aad410,b.fvalue baad411,a.aad415,d.fvalue daad418,")
				.append("       a.aad419")
				.append("  from ad04 a,syscode b,syscode c,syscode d")
				.append(" where a.aad411=b.fcode and b.fname='aad411'")
				.append("   and a.aad404=c.fcode and c.fname='aad404'")
				.append("   and a.aad418=d.fcode and d.fname='aad418'")
				;
		List<Object> paramList=new ArrayList<>();
		if(this.isNotNull(qaad402))
		{
			sql.append(" and a.aad402 like ?");
			paramList.add("%"+qaad402+"%");
		}
		if (this.isNotNull(qaad403)) 
		{
			sql.append(" and a.aad403 = ?");
			paramList.add(qaad403);
		}
		
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	public Map<String,String> findByIdPurchase()throws Exception
	{
		StringBuilder sql= new StringBuilder()
				.append("select aac401,aad402,aad403,aad404,aad405,")
				.append("       aad406,aad407,aad408,aad409,aad410,")
				.append("       aad411,aad412,aad413,aad414,aad415,")
				.append("       aad416,aad417,aad418,aad419,aad420,")
				.append("       aad421")
				.append("  from ad04")
				.append(" where aad401=?")
				;
		return this.queryForMap(sql.toString(), this.get("aad401"));
	}
}
