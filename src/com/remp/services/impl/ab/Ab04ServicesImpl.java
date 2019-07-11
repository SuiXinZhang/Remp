package com.remp.services.impl.ab;

import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ab04ServicesImpl extends JdbcServicesSupport 
{
	/**
	 * 查询营销活动
	 */
	@Override
	public Map<String, String> findById() throws Exception 
	{
		StringBuilder sql = new StringBuilder()
				.append("select aab301,aab402,aab403,aab404,aab405,aab406")
				.append("  from ab04 ")
				.append(" where aab301=?")
				;
		return this.queryForMap(sql.toString(), this.get("aab301"));
	}
	
	/**
	 * 判断并执行(添加删除)
	 * @return
	 * @throws Exception
	 */
	public boolean edit()throws Exception 
	{
		String sql = "select aab301 from ab04 where aab301=?";
		if (this.queryForMap(sql, this.get("aab301"))==null)
		{
			return add();
		}
		else
		{
			return modify();
		}
	}
	
	
	/**
	 * 添加营销活动
	 * @return
	 * @throws Exception
	 */
	public boolean add() throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ab04(aab301,aab402,aab403,aab404,aab405,aab406)")
				.append(" values(?,?,?,?,?,?)")
				;
		Object args[] = {
			this.get("aab301"),
			this.get("aab402"),
			this.get("aab403"),
			this.get("aab404"),
			this.get("aab405"),
			this.get("aab406")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	/**
	 * 修改营销活动
	 * @return
	 * @throws Exception
	 */
	public boolean modify() throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ab04 set aab402=?,aab403=?,aab404=?,aab405=?,aab406=?")
				.append("	where aab301=?")
				;
		Object stateList[] = {
			this.get("aab402"),
			this.get("aab403"),
			this.get("aab404"),
			this.get("aab405"),
			this.get("aab406"),
			this.get("aab301")
		};
		return this.executeUpdate(sql.toString(), stateList)>0;
	}
	
	
}
