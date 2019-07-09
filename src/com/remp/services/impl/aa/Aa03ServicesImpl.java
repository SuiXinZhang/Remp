package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

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
    			.append("select a.aaa302,a.aaa303,a.aaa304,a.aaa305")
    			.append("  from aa03 a")
    			.append(" where a.aaa301=?")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa301"));
	}

	/**
	 * 批量查询当前团队的子团队有哪些
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> findChildTeam()throws Exception
	{
		if(this.get("aaa301")==null)//没有父级团队,说明为查询1级团队
		{
			StringBuilder sql=new StringBuilder()
					.append("select a.aaa301,a.aaa303")
					.append("  from aa03 a")
					.append("  where a.aaa302=0 and a.aaa201=?")//查询顶级团队且属于当前项目
					;

			return this.queryForList(sql.toString(),this.get("aaa201"));
		}
		else //查询子团队
		{
			StringBuilder sql = new StringBuilder()
					.append("select a.aaa301,a.aaa303")
					.append(" from aa03 a")
					.append(" where a.aaa302=?")
					;
			return this.queryForList(sql.toString(),this.get("aaa301"));
		}
	}
	
	/**
	 * 添加团队
	 * @return
	 * @throws Exception
	 */
	public boolean addTeam()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("insert into aa03(aaa201,aaa302,aaa303,aaa304,aaa305)")
				.append("		value(?,?,?,?,?)")
    			;
		Object []args = {//默认创建顶级团队
				this.get("aaa201"),
				0,
				this.get("aaa303"),
				this.get("aaa304"),
				this.get("aaa305")
			};
		
		if(this.get("aaa201")!=null)//在当前团队下创建子团队
		{
			args[1]=this.get("aaa301");//父级流水号改为当前团队流水号
		}

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
				.append("update aa03 set aaa302=?,aaa305=?")
				.append(" where aaa301=?")
    			;
		Object []args = {
				this.get("aaa302"),
				this.get("aaa305"),

				this.get("aaa301"),
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
}
