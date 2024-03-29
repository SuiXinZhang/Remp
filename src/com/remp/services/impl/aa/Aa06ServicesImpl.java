package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

/**
 * 此类用于操作区域信息表aa06
 * @author Phoenix
 *
 */
public class Aa06ServicesImpl extends JdbcServicesSupport {
	
	/**
	 * 用于查询当前区域的基本信息
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa601,a.aaa602,a.aaa603,a.aaa604,a.aaa605")
    			.append("  from aa06 a")
    			.append(" where a.aaa601=?")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa601"));
	}
	
	/**
	 * 批量查询当前项目的所有区域
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> query()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("select a.aaa601,a.aaa602,a.aaa603,a.aaa604,a.aaa605")
				.append("  from aa06 a")
				.append("  where a.aaa201=?")//查询区域且属于当前项目
				;

		return this.queryForList(sql.toString(),this.get("aaa201"));
	}

	/**
	 * 在当前项目下添加区域
	 * @return
	 * @throws Exception
	 */
	public boolean addArea()throws Exception
	{
		
		int aaa601 = Tools.getSequence("aaa601");
		this.put("aaa601", aaa601);
		
		StringBuilder sql=new StringBuilder()
				.append("insert into aa06(aaa601,aaa201,aaa602,aaa603,aaa604,")
				.append("				  aaa605)")
				.append("		value(?,?,?,?,?,")
				.append("			  ?)")
    			;
		Object []args = {
				aaa601,
				this.get("aaa201"),
				this.get("aaa602"),
				this.get("aaa603"),
				this.get("aaa604"),
				
				this.get("aaa605")
			};
		return this.executeUpdate(sql.toString(), args)>0;
	}

	
	/**
	 * 修改区域信息
	 * @return
	 * @throws Exception
	 */
	public boolean modifyArea()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa06 set aaa602=?,aaa603=?,aaa604=?,aaa605=?")
				.append(" where aaa601=?")
    			;
		Object tem[]= {
				this.get("aaa602"),
				this.get("aaa603"),
				this.get("aaa604"),
				this.get("aaa605"),
				
				this.get("aaa601") 
		};
		
		return this.executeUpdate(sql.toString(), tem)>0;
	}
	
	/**
	 * 删除区域
	 * @return
	 * @throws Exception
	 */
	public boolean delByIdArea()throws Exception
	{
		String sql = "delete from aa06 where aaa601 = ?";
		
		Object id = this.get("aaa601");
		
		return this.executeUpdate(sql, id)>0;
	}
	
	/**
	 * 批量删除区域
	 * @return
	 * @throws Exception
	 */
	public boolean deleteAreas()throws Exception
	{
		String sql = "delete from aa06 where aaa601 = ?";
		return this.batchUpdate(sql, this.getIdList("idlist"));
	}
	
}
