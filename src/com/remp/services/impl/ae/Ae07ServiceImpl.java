package com.remp.services.impl.ae;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ae07ServiceImpl extends JdbcServicesSupport 
{
	public boolean addAe07()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ae07(aae702,aae703,aae704,aae705,")
				.append("                 aae706,aae707,aae708,aaa801,aae709)")
				.append("          values(?,?,?,?,")
				.append("                 ?,?,?,?,?)")
				;
		double diff = (Double.valueOf((String) this.get("aae703"))-Double.valueOf((String)this.get("aae702")))/Double.valueOf((String)this.get("aae702"));
		Object args[] = new Object[]{
				this.get("aae702"),
				this.get("aae703"),
				"01",
				diff,
				this.get("aae706"),
				this.get("aae707"),
				this.get("aae708"),
				this.get("aaa801"),
				this.get("aae709")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	public List<Map<String, String>> query()throws Exception
	{
		Object qaae704 = this.get("qaae704");
		Object qaae707 = this.get("qaae707");
		Object qaae709 = this.get("qaae709");
		StringBuilder sql = new StringBuilder()
				.append("select e.aae701,e.aae702,e.aae703,e.aae709,a.aaa801,s.fvalue as snaae704,e.aae705,e.aae707,e.aae708")
				.append("       from aa08 a,ae07 e,syscode s")
				.append("       where e.aae704='01'")
				;
		List<Object> paramList = new ArrayList<>();
		if(isNotNull(qaae707))
		{
			sql.append("	and e.aae707 like ?");
			paramList.add("%"+qaae707+"%");
		}
		if(isNotNull(qaae709))
		{
			sql.append("	and e.aae709 like ?");
			paramList.add("%"+qaae709+"%");
		}
		if(isNotNull(qaae704))
		{
			sql.append("    and e.aae704 = ?");
			paramList.add(qaae704);
		}
		sql.append("     and a.aaa801 = e.aaa801")
			.append(" and s.fname='aae704' ")
			.append(" and e.aae704 = s.fcode");
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	

	public Map<String, String> getAa08List()throws Exception
	{
		String sql = "select aaa803,aaa801 from aa08";
		String str = this.getFolderList(sql);
		Map<String, String> ins = new HashMap<>();
		ins.put("list", str);
		return ins;
	}
	
	public boolean execute()throws Exception
	{
		String sql1 = "select aae705,aae708 from ae07 where aae701=?";
		Map<String, String> map = this.queryForMap(sql1, this.get("aae701"));
		StringBuilder sql = new StringBuilder()
				.append("insert into ae05(aae502,aae503,aae504,aae505,aae506,")
				.append("                 aae701,aae507)")
				.append("           values(?,?,?,?,?,?,?)")
				;
		double aae502 = Double.valueOf(map.get("aae708"))*Double.valueOf(map.get("aae705"));
		double aae503 = aae502;
		double aae504 = aae503+aae502;
		double aae505 = aae504;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		Object aae506 = df.format(new Date());
		Object args[] = new Object[]{
				aae502,
				aae503,
				aae504,
				aae505,
				aae506,
				this.get("aae701"),
				"01"
		};
		String sql2 = "update ae07 set aae704 = '02' where aae701=?";
		this.appendSql(sql.toString(), args);
		this.appendSql(sql2, this.get("aae701"));
		return this.executeTransaction();
	}
	
	
	public boolean executeAll()throws Exception
	{
		Object[] idlist = this.getIdList("IdList");
		String sql1 = "select aae705,aae708 from ae07 where aae701=?";
		StringBuilder sql2 = new StringBuilder()
				.append("insert into ae05(aae502,aae503,aae504,aae505,aae506,")
				.append("                 aae507,aae701)")
				.append("           values(?,?,?,?,?,?,?)")
				;
		String sql3 = "update ae07 set aae704 = '02' where aae701=?";
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
		Object aae506 = df.format(new Date());
		for(Object id:idlist)
		{
			Map<String, String> map = this.queryForMap(sql1, id);
			double aae502 = Double.valueOf(map.get("aae708"))*Double.valueOf(map.get("aae705"));
			double aae503 = aae502;
			double aae504 = aae503+aae502;
			double aae505 = aae504;
			Object args[] = new Object[]{
					aae502,
					aae503,
					aae504,
					aae505,
					aae506,
					"01",
					id
			};
			
			this.appendSql(sql2.toString(), args);
			this.appendSql(sql3, id);
		}
		return this.executeTransaction();
	}
}
