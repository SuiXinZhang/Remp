package com.remp.services.impl.ab;

import java.util.List;
import java.util.Map;

import javax.swing.text.DefaultEditorKit.InsertBreakAction;

import com.remp.services.JdbcServicesSupport;

public class Ab05ServicesImpl extends JdbcServicesSupport 
{
	/**
	 * 来电来访与营销投入分析
	 */
	@Override
	public List<Map<String, String>> query() throws Exception 
	{
		//编写SQL语句 按月分组查询相应月份的来电、来访总数以及这期间用于营销活动的费用
		StringBuilder sql = new StringBuilder()
				.append("	select b.aab502,b.aab504,b.aab505,d.aab503")
				.append("	from")
				.append("	(")
				.append("	select")
				.append("	date_format(aac102,'%Y-%c') as aab502, ")
				.append("	count(case when a.aac103='电话' then a.aac103 end) as aab504,")
				.append("	count(case when a.aac103='走访' then a.aac103 end) as aab505")
				.append("	from ac01 a ")
				.append("  where a.aac102 between ? and ?")
				.append("	group by date_format(a.aac102,'%Y-%c')")
				.append("	)as b")
				.append("	left join ")
				.append("	(")
				.append("	select ")
				.append("	date_format(c.aab404,'%Y-%c') as col4,")
				.append("	sum(c.aab405)/10000 as aab503")
				.append("	from ab04 c")
				.append("	where c.aab404 between ? and ?")
				.append("	group by date_format(c.aab404,'%Y-%c')")
				.append("	)as d")
				.append("	on b.aab502=d.col4")
				;
		Object args[] = {
				this.get("bdate"),this.get("edate"),
				this.get("bdate"),this.get("edate")
		};
		
		//查询
		return this.queryForList(sql.toString(), args);
	}
	
	
	/**
	 * 销售签约与营销投入分析
	 * @return
	 * @throws Exception
	 */
	public List<Map<String, String>> queryC2() throws Exception
	{
		//编写SQL语句 按月分组查询相应月份的销售签约额以及这期间用于营销活动的费用
		StringBuilder sql = new StringBuilder()
				.append("	select b.aab502,b.aab506,d.aab503")
				.append("	from")
				.append("	(")
				.append("	select")
				.append("	date_format(aad415,'%Y-%c') as aab502, ")
				.append("	sum(aad414) as aab506")
				.append("	from ad04 a ")
				.append("  where a.aad415 between ? and ?")
				.append("	group by date_format(a.aad415,'%Y-%c')")
				.append("	)as b")
				.append("	left join ")
				.append("	(")
				.append("	select ")
				.append("	date_format(c.aab404,'%Y-%c') as col4,")
				.append("	sum(c.aab405) as aab503")
				.append("	from ab04 c")
				.append("	where c.aab404 between ? and ?")
				.append("	group by date_format(c.aab404,'%Y-%c')")
				.append("	)as d")
				.append("	on b.aab502=d.col4")
				;
		
		Object args[] = {
				this.get("bdate"),this.get("edate"),
				this.get("bdate"),this.get("edate")
		};
		
		//查询
		return this.queryForList(sql.toString(), args);
	}
	
}
