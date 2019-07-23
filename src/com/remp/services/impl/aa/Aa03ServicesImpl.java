package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

/**
 * 此类用于操作团队部门表aa03
 * 部门可无限向下分级
 * @author Phoenix
 *
 */
public class Aa03ServicesImpl extends JdbcServicesSupport {
	
	/**
	 * 用于查询当前团队的基本信息
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa301,a.aaa302,a.aaa303")
    			.append("  from aa03 a")
    			.append(" where a.aaa301=?")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa301"));
	}

	/**
	 * 批量查询部门有哪些
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> query()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("select a.aaa301,a.aaa302,a.aaa303")
				.append("  from aa03 a")
				.append("  where a.aaa201=?")
				;

		return this.queryForList(sql.toString(),this.get("aaa201"));
	}
	
	/**
	 * 添加团队
	 * @return
	 * @throws Exception
	 */
	public boolean addTeam()throws Exception
	{
		int aaa301 = Tools.getSequence("aaa301");
		this.put("aaa301", aaa301);//将新生成的团队流水号put
		
		StringBuilder sql=new StringBuilder()
				.append("insert into aa03(aaa301,aaa201,aaa302,aaa303)")
				.append("		value(?,?,?,?)")
    			;
		Object []args = {//默认创建顶级团队
				aaa301,
				this.get("aaa201"),
				this.get("aaa302"),
				this.get("aaa303")
			};
		
		return this.executeUpdate(sql.toString(), args)>0;
		
	}
	
	/**
	 * 修改团队信息
	 * @return
	 * @throws Exception
	 */
	public boolean modifyTeam()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa03 set aaa302=?,aaa303=?")
				.append(" where aaa301=?")
    			;
		Object []args = {
				this.get("aaa302"),
				this.get("aaa303"),

				this.get("aaa301")
			};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	/**
	 * 删除团队
	 * @return
	 * @throws Exception
	 */
	public boolean delByIdTeam()throws Exception
	{
		String sql = "delete from aa03 where aaa301 = ?";
		
		Object id = this.get("aaa301");
		
		
		return this.executeUpdate(sql, id)>0;
	}
	
	/**
	 * 批量删除团队
	 * @return
	 * @throws Exception
	 */
	public boolean deleteTeams()throws Exception
	{
		String sql = "delete from aa03 where aaa301 = ?";
		return this.batchUpdate(sql, this.getIdList("idlist"));
	}
}
