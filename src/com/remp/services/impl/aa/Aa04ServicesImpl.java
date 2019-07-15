package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.system.tools.Tools;
import com.remp.services.JdbcServicesSupport;

/**
 * 此类用于操作员工信息表
 * @author Phoenix
 *
 */
public class Aa04ServicesImpl extends JdbcServicesSupport {
	
	/**
	 * 用于查询当前员工信息
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa401,a.aaa402,a.aaa403,a.aaa404,a.aaa405,")
    			.append("       a.aaa406,a.aaa407,a.aaa408,a.aaa409,a.aaa410,b.aaa302")
    			.append("  from aa04 a,aa03 b")
    			.append(" where a.aaa401=? and a.aaa301=b.aaa301")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa401"));
	}
	
	/**
	 * 批量查询部门员工
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> query()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa401,a.aaa402,a.aaa403,a.aaa404,a.aaa405,")
    			.append("       a.aaa406,a.aaa407,a.aaa408,a.aaa409,a.aaa410,b.aaa302")
    			.append("  from aa04 a,aa03 b")
    			.append(" where a.aaa301=? and a.aaa301=b.aaa301")
    			;
		return this.queryForList(sql.toString(), this.get("aaa301"));
	}
	

	/**
	 * 在当前部门下添加新员工
	 * @return
	 * @throws Exception
	 */
	public boolean addEmp()throws Exception
	{
		int aaa401 = Tools.getSequence("aaa401");
		this.put("aaa401", aaa401);
		
		String aaa402 = Tools.getEmpNumber("aaa402");
		this.put("aaa402", aaa402);
		
		StringBuilder sql=new StringBuilder()
    			.append("insert into aa04(aaa401,aaa301,aaa402,aaa403,aaa404,")
    			.append("                 aaa405,aaa406,aaa407,aaa408,aaa409,aaa410)")
    			.append("          values(?,?,?,?,?,")
    			.append("                 ?,?,?,?,?,?)")
    			;
		
		Object []args = {
			aaa401,
			this.get("aaa301"),
			aaa402,
			this.get("aaa403"),
			this.get("aaa404"),
			
			this.get("aaa405"),
			this.get("aaa406"),
			this.get("aaa407"),
			this.get("aaa408"),
			this.get("aaa409"),
			this.get("aaa410")
		};
		
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	/**
	 * 修改员工信息（更改部门尚未实现）
	 * @return
	 * @throws Exception
	 */
	public boolean modifyEmp()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa04 set aaa403=?,aaa404=?,aaa405=?,aaa406=?,")
				.append("				 aaa407=?,aaa408=?,aaa409=?,aaa410=?")
				.append(" where aaa401=?")
    			;
		Object []args = {
				this.get("aaa403"),
				this.get("aaa404"),
				this.get("aaa405"),
				this.get("aaa406"),
				
				this.get("aaa407"),
				this.get("aaa408"),
				this.get("aaa409"),
				this.get("aaa410"),
				
				this.get("aaa401")
			};
		
		return this.executeUpdate(sql.toString(), args)>0;
	}
	

	/**
	 * 删除员工
	 * @return
	 * @throws Exception
	 */
	public boolean delByIdEmp()throws Exception
	{
		String sql = "delete from aa04 where aaa401 = ?";
		
		Object id = this.get("aaa401");
		
		return this.executeUpdate(sql, id)>0;
	}
}
