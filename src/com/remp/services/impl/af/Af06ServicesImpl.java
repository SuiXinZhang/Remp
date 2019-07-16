package com.remp.services.impl.af;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Af06ServicesImpl extends JdbcServicesSupport
{
	/**
	 * 添加银行放款
	 * @return
	 * @throws Exception
	 */
	public boolean add()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into af06(aaf602,aaf603,aaf604,aaf605,aaf606,")
				.append("				  aaf607,aaf608,aaf609,aaf610,aaf611,")
				.append("				  aaf612)")
				.append("	       values(?,?,?,?,?,")
				.append("		          ?,?,?,?,?,")
				.append("		          ?)")
				;
		
		Object args[] = {
			this.get("aaf602"),
			this.get("aaf603"),
			this.get("aaf604"),
			this.get("aaf605"),
			this.get("aaf606"),
			this.get("aaf607"),
			this.get("aaf608"),
			this.get("aaf609"),
			this.get("aaf610"),
			this.get("aaf611"),
			this.get("aaf612")
		};
		
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	
	/**
	 * 不定条件查询
	 */
	@Override
	public List<Map<String, String>> query() throws Exception 
	{	
		//获取页面数据
		Object qaaf602 = this.get("qaaf602");
		Object qaaf612 = this.get("qaaf612");
		Object qaaf604 = this.get("qaaf604");
		Object bdate = this.get("bdate");
		Object edate = this.get("edate");
		
		//编写主题SQL
		StringBuilder sql = new StringBuilder()
				.append("select aaf601,aaf602,aaf603,aaf604,aaf605,aaf606")
				.append("  from af06")
				.append("	where true")
				;
		//定义参数列表
		List<Object> paramList = new ArrayList<>();
		
		//逐一判断查询条件是否录入,拼接AND条件
		if (this.isNotNull(qaaf602)) 
		{
			sql.append(" and aaf602=?");
			paramList.add(qaaf602);
		}
		if (this.isNotNull(qaaf604)) 
		{
			sql.append(" and aaf604=?");
			paramList.add(qaaf604);
		}
		if (this.isNotNull(qaaf612)) 
		{
			sql.append(" and aaf612 like ?");
			paramList.add("%"+qaaf612+"%");
		}
		if (this.isNotNull(bdate)) 
		{
			sql.append(" and aaf605>?");
			paramList.add(bdate);
		}
		if (this.isNotNull(edate))
		{
			sql.append(" and aaf605<?");
			paramList.add(edate);
		}
		
		return this.queryForList(sql.toString(), paramList.toArray());
	}
}