package com.remp.services.impl.ad;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

public class Ad07ServicesImpl extends JdbcServicesSupport 
{
	/**
	 * 从订单转签约
	 */
	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select x.aac401,x.aad402,x.aad403,x.aad404,x.aad405,")
				.append("       x.aad406,x.aad407,x.aad408,x.aad409,x.aad410,")
				.append("       x.aad411,x.aad412,x.aad413,x.aad414,x.aad415,")
				.append("       x.aad416,x.aad417,x.aad418,x.aad419,x.aad420,")
				.append("       d.aad301,d.aad302,d.aad305,a.aaa504,s.fvalue saaa805,")
				.append("       a.aaa505,a.aaa506,b.aaa808,b.aaa810,d.aac401,")
				.append("       x.aad421,b.aaa801,x.aad401")
				.append("  from ad04 x,aa05 a,aa08 b,ad03 d,syscode s")
				.append(" where x.aad401=? and x.aac401=d.aac401")
				.append("   and d.aaa801=b.aaa801 and b.aaa807=a.aaa502")
				.append("   and b.aaa805=s.fcode  and s.fname='aaa805'")
				;
		
		return this.queryForMap(sql.toString(), this.get("aad401"));
	}
	/**
	 * 添加合同
	 * @return
	 * @throws Exception
	 */
	public boolean addAgreement()throws Exception
	{
		Object aad710 = Tools.getEmpNumber("aad710");
		this.put("aad710", aad710);
		StringBuilder sql1 = new StringBuilder()
				.append("insert into ad07(aad702,aad703,aad704,aad705,aad706,")
				.append("                 aad707,aad708,aad709,aad710,aad711,")
				.append("                 aad712,aad713,aad714,aad715,aad716,")
				.append("                 aad717,aad718,aad719,aad720,aad721,")
				.append("                 aad722,aac401,aaa801,aad401)")
				.append("           values(?,?,?,?,?,")
				.append("                  ?,?,?,?,?,")
				.append("                  ?,?,?,?,?,")
				.append("                  ?,?,?,?,?,")
				.append("                  ?,?,?,?)")
				;
		Object args[] = {
				this.get("aad702"),
				this.get("aad703"),
				this.get("aad704"),
				this.get("aad705"),
				this.get("aad706"),
				this.get("aad707"),
				this.get("aad708"),
				this.get("aad709"),
				aad710,
				this.get("aad711"),
				this.get("aad712"),
				this.get("aad713"),
				this.get("aad714"),
				this.get("aad715"),
				this.get("aad716"),
				this.get("aad717"),
				this.get("aad718"),
				this.get("aad719"),
				this.get("aad720"),
				this.get("aad721"),
				this.get("aad722"),
				this.get("aac401"),
				this.get("aaa801"),
				this.get("aad401")
		};
		String sql2 = "update aa08 set aaa805 = '02' where aaa801=?";
		String sql3 = "update ad04 set aad422 = '已激活' where aad401=?";
		this.executeUpdate(sql1.toString(), args);
		this.appendSql(sql2, this.get("aaa801"));
		this.appendSql(sql3, this.get("aad401"));
		return this.executeTransaction();
	}
	/**
	 * 查询合同
	 */
	public List<Map<String, String>> query()throws Exception
	{
		Object qaad702=this.get("qaad702");    //客户名称
		Object qaad703=this.get("qaad703");    //房间编号
		StringBuilder sql = new StringBuilder()
				.append("select a.aad701,a.aac401,a.aad702,a.aad703,c.fvalue caad704,")
				.append("       a.aad705,a.aad711,b.fvalue baad712,a.aad716,d.fvalue daad719,")
				.append("       a.aad720,a.aac401")
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
			sql.append(" and a.aad703 = ?");
			paramList.add(qaad703);
		}
		
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	/**
	 * 查看合同
	 * @return
	 * @throws Exception
	 */
	public Map<String, String> findByIdAgreement()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select x.aad701,x.aac401,x.aad702,x.aad703,x.aad704,")
				.append("       x.aad705,x.aad706,x.aad707,x.aad708,x.aad709,")
				.append("      x.aad710,x.aad711,x.aad712,x.aad713,x.aad714,")
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
	/**
	 * 作废合同
	 * @return
	 * @throws Exception
	 */
	public boolean cancelledAgreement()throws Exception
	{
		String sql1 = "update ad07 set aad719='04' where aad701=?";
		String sql2 = "update ad04 a, ad07 b set aad422='未激活' where b.aad701 = ? and b.aad401=a.aad401";
		this.appendSql(sql1, this.get("aad701"));
		this.appendSql(sql2, this.get("aad701"));
		return this.executeTransaction();
	}
}
