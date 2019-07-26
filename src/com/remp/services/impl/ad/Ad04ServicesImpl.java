package com.remp.services.impl.ad;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ad04ServicesImpl extends JdbcServicesSupport 
{
	/**
	 * 从看房记录转小订,认购以及签约
	 */
	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select d.aad301,d.aad302,d.aad305,a.aaa504,s.fvalue saaa805,")
				.append("       a.aaa505,a.aaa506,b.aaa808,b.aaa810,d.aac401,")
				.append("       c.aac407,d.aaa801")
				.append("  from aa05 a,aa08 b,ac04 c,ad03 d,syscode s")
				.append(" where d.aad301=? and d.aaa801=b.aaa801")
				.append("   and b.aaa807=a.aaa502 and b.aaa805=s.fcode")
				.append("   and s.fname='aaa805'  and c.aac401=d.aac401")
				;
		return this.queryForMap(sql.toString(), this.get("aad301"));
	}
	/**
	 * 添加订单
	 * @return
	 * @throws Exception
	 */
	public boolean addPurchase()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ad04(aac401,aad402,aad403,aad404,aad405,")
				.append("                 aad406,aad407,aad408,aad409,aad410,")
				.append("                 aad411,aad412,aad413,aad414,aad415,")
				.append("                 aad416,aad417,aad418,aad419,aad420,")
				.append("                 aad421,aad422,aaa801,aad301)")
				.append("          values(?,?,?,?,?,")
				.append("                 ?,?,?,?,?,")
				.append("                 ?,?,?,?,?,")
				.append("                 ?,?,?,?,?,")
				.append("                 ?,?,?,?)")
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
				"未激活",
				this.get("aaa801"),
				this.get("aad301")
		};
		this.appendSql(sql.toString(), args);
		String sql2 = "update ad03 set aad308='无效' where aad301=?";
		this.appendSql(sql2, this.get("aad301"));
		return this.executeTransaction();
	}
	/**
	 * 查询订单
	 */
	public List<Map<String, String>> query()throws Exception
	{
		Object qaad402=this.get("qaad402");    //客户名称
		Object qaad403=this.get("qaad403");    //房间编号
		StringBuilder sql = new StringBuilder()
				.append("select a.aad401,a.aac401,a.aad402,a.aad403,c.fvalue caad404,")
				.append("       a.aad405,a.aad410,b.fvalue baad411,a.aad415,d.fvalue daad418,")
				.append("       a.aad419,s.aad301,a.aad422")
				.append("  from ad04 a,syscode b,syscode c,syscode d,ad03 s")
				.append(" where a.aad411=b.fcode and b.fname='aad411'")
				.append("   and a.aad404=c.fcode and c.fname='aad404'")
				.append("   and a.aad418=d.fcode and d.fname='aad418'")
				.append("   and a.aad301=s.aad301")
				;
		List<Object> paramList=new ArrayList<>();
		if(this.isNotNull(qaad402))
		{
			sql.append(" and a.aad402 like ?");
			paramList.add("%"+qaad402+"%");
		}
		if (this.isNotNull(qaad403)) 
		{
			sql.append(" and a.aad403 like ?");
			paramList.add("%"+qaad403+"%");
		}
		
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	/**
	 * 按id查找订单
	 * @return
	 * @throws Exception
	 */
	public Map<String,String> findByIdPurchase()throws Exception
	{
		StringBuilder sql= new StringBuilder()
				.append("select x.aac401,x.aad402,x.aad403,x.aad404,x.aad405,")
				.append("       x.aad406,x.aad407,x.aad408,x.aad409,x.aad410,")
				.append("       x.aad411,x.aad412,x.aad413,x.aad414,x.aad415,")
				.append("       x.aad416,x.aad417,x.aad418,x.aad419,x.aad420,")
				.append("       d.aad301,d.aad302,d.aad305,a.aaa504,s.fvalue saaa805,")
				.append("       a.aaa505,a.aaa506,b.aaa808,b.aaa810,d.aac401,")
				.append("       c.aac407,d.aad301,x.aad422")
				.append("  from ad04 x,aa05 a,aa08 b,ac04 c,ad03 d,syscode s")
				.append(" where x.aad401=? and x.aac401=d.aac401")
				.append("   and d.aaa801=b.aaa801 and b.aaa807=a.aaa502")
				.append("   and b.aaa805=s.fcode  and s.fname='aaa805'")
				.append("   and d.aac401=c.aac401")
				;
		
		return this.queryForMap(sql.toString(), this.get("aad401"));
	}
	/**
	 * 修改订单
	 * @return
	 * @throws Exception
	 */
	public boolean modifyPurchase()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ad04 a")
				.append("   set a.aad404=?,a.aad405=?,a.aad406=?,a.aad407=?,a.aad408=?,")
				.append("       a.aad409=?,a.aad410=?,a.aad411=?,a.aad412=?,a.aad413=?,")
				.append("       a.aad414=?,a.aad415=?,a.aad416=?,a.aad417=?,a.aad418=?,")
				.append("       a.aad419=?,a.aad420=?,a.aad421=?")
				.append(" where a.aad401=?")
				;
		Object args[] = {
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
				this.get("aad401")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	/**
	 * 作废订单,并修改房间状态为可选
	 * @return
	 * @throws Exception
	 */
	public boolean deleteById()throws Exception
	{
		String sql1 = "delete from ad04 where aad401=? ";
		StringBuilder sql2 = new StringBuilder()
				.append("update aa08 a,ad04 b,ad03 c ")
				.append("   set a.aaa805='01' ")
				.append(" where b.aad401=? and b.aac401=c.aac401")
				.append("   and c.aaa801=a.aaa801")
				;
		this.appendSql(sql1, this.get("aad401"));
		this.executeUpdate(sql2.toString(), this.get("aad401"));
		return this.executeTransaction();
	}
}
