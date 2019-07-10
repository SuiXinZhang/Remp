package com.remp.services.impl.ad;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class AdServicesImpl extends JdbcServicesSupport{

	public List<Map<String, String>> query()throws Exception
	{
		Object baaa809 = this.get("baaa809");   //建筑总价[B]
		Object eaaa809 = this.get("eaaa809");   //建筑总价[E]
		Object aaa805 = this.get("qaaa805");    //状态
		Object baaa505 = this.get("baaa505");   //建筑面积[B]
		Object eaaa505 = this.get("eaaa505");   //建筑面积[E]
		Object aaa504 = this.get("qaaa504");    //房间结构
		Object aaa502 = this.get("qaaa502");    //户型
		
		StringBuilder sql = new StringBuilder()
				.append("select x.aaa801,x.aaa803,x.aaa804,c.fvalue caaa805,a.fvalue caaa502,")
				.append("       b.fvalue caaa504,s.aaa505,x.aaa808,x.aaa809")
				.append("  from aa08 x,aa05 s,syscode a,syscode b,syscode c")
				.append(" where x.aaa807=s.aaa502 and s.aaa502=a.fcode")
				.append("   and a.fname='aaa502'  and s.aaa504=b.fcode")
				.append("   and b.fname='aaa504'  and x.aaa805=c.fcode")
				.append("   and c.fname='aaa805'");
		
		//参数列表
  		List<Object> paramList=new ArrayList<>();
  		//逐一判断查询条件是否录入,拼接AND条件
  		if(this.isNotNull(baaa809))
  		{
  			sql.append(" and x.aaa809>=?");
  			paramList.add(baaa809);
  		}
  		if(this.isNotNull(eaaa809))
  		{
  			sql.append(" and x.aaa809<=?");
  			paramList.add(eaaa809);
  		}
  		if(this.isNotNull(aaa805))
  		{
  			sql.append(" and x.aaa805=?");
  			paramList.add(aaa805);
  		}
  		if(this.isNotNull(baaa505))
  		{
  			sql.append(" and s.aaa505>=?");
  			paramList.add(baaa505);
  		}
  		if(this.isNotNull(eaaa505))
  		{
  			sql.append(" and s.aaa505<=?");
  			paramList.add(eaaa505);
  		}
  		if(this.isNotNull(aaa504))
  		{
  			sql.append(" and s.aaa504=?");
  			paramList.add(aaa504);
  		}
  		if(this.isNotNull(aaa502))
  		{
  			sql.append(" and s.aaa502=?");
  			paramList.add(aaa502);
  		}
  		
  		sql.append(" order by x.aaa802");
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	
	
}
