package com.remp.services.impl.ab;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.sun.org.apache.bcel.internal.generic.Select;

import jdk.nashorn.internal.objects.annotations.Where;

public class Ab03ServicesImpl extends JdbcServicesSupport
{
	public Map<String, String> findSum() throws Exception
	{
		String sql = "select aab309 from ab03 where aab301=?";
		return this.queryForMap(sql, this.get("aab301"));
	}
	
	/**
	 * 编辑营销效果评估
	 * @return
	 * @throws Exception
	 */
	public boolean updateSummary()throws Exception
	{
		String sql = "update ab03 set aab304='03',aab309=? where aab301=?";
		Object args[] = {this.get("aab309"),this.get("aab301")};
		return this.executeUpdate(sql, args)>0;
	}
	
	/**
	 * 修改营销方案
	 * @return
	 * @throws Exception
	 */
	public boolean modifyAb03()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ab03")
				.append("   set aab302=?,aab303=?,aab305=?,aab306=?,aab307=?")
				.append(" where aab301=?")
				;
		Object args[]={
				this.get("aab302"),
				this.get("aab303"),
				this.get("aab305"),
				this.get("aab306"),
				this.get("aab307"),
				this.get("aab301")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	/**
	 * 批量删除
	 * @return
	 * @throws Exception
	 */
	public boolean batchDelete()throws Exception
	{
		String sql = "delete from ab03 where aab301=?";
		//获取页面idlist
		String idlist[] = this.getIdList("idlist");
		
		return this.batchUpdate(sql, idlist);
	}
	
	/**
	 * 单一实例删除
	 * @return
	 * @throws Exception
	 */
	public boolean delById() throws Exception
	{
		String sql = "delete from ab03 where aab301=?";
		return this.executeUpdate(sql, this.get("aab301"))>0;
	}
	
	/**
	 * 添加营销方案
	 * @return
	 * @throws Exception
	 */
	public boolean add() throws Exception
	{
		String aab304 = "01";
		
		StringBuilder sql = new StringBuilder()
				.append("insert into ab03(aab302,aab303,aab304,aab305,aab306,aab307)")
				.append(" values(?,?,?,?,?,?)")
				;
		Object args[] = {
				this.get("aab302"),
				this.get("aab303"),
				aab304,
				this.get("aab305"),
				this.get("aab306"),
				this.get("aab307")
		};
		
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	/**
	 * 不定条件查询
	 */
	@Override
	public List<Map<String, String>> query() throws Exception 
	{
		//还原页面数据
		Object qaab302 = this.get("qaab302");
		Object qaab304 = this.get("qaab304");
		Object qaab305 = this.get("qaab305");
		Object qaab306 = this.get("qaab306");
		
		StringBuilder sql = new StringBuilder()
				.append("select a.aab301,a.aab302,a.aab303,b.fvalue cnaab304,a.aab305,a.aab306")
				.append("  from ab03 a,syscode b")
				.append(" where true")
				.append("	and b.fcode=a.aab304 and b.fname='aab304'")
				;
		
		//参数列表
		List<Object> paramList = new ArrayList<>();

		if (isNotNull(qaab302)) 
		{
			sql.append(" and aab302 like ?");
			paramList.add("%"+qaab302+"%");
		}
		if (isNotNull(qaab304)) 
		{
			sql.append(" and aab304=?");
			paramList.add(qaab304);
		}
		if (isNotNull(qaab305)) 
		{
			sql.append(" and aab305=?");
			paramList.add(qaab305);
		}
		if (isNotNull(qaab306)) 
		{
			sql.append(" and aab306=?");
			paramList.add(qaab306);
		}
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	
	/**
	 * 单一实例查询
	 */
	@Override
	public Map<String, String> findById() throws Exception 
	{
		StringBuilder sql = new StringBuilder()
				.append("select aab301,aab302,aab303,aab304,aab305,aab306,aab307")
				.append("  from ab03")
				.append(" where aab301=?")
				;
		return this.queryForMap(sql.toString(), this.get("aab301"));
	}
}
