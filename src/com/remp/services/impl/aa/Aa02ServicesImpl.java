package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

/**
 * 此类用于操作项目信息表aa02
 * @author Phoenix
 *
 */
public class Aa02ServicesImpl extends JdbcServicesSupport {
	
	/**
	 * 用于查询当前项目的基本信息
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa202,a.aaa203,a.aaa204,a.aaa205,a.aaa206,")
    			.append("       a.aaa207,a.aaa208,a.aaa209,a.aaa210,a.aaa211,")
    			.append("       a.aaa212,a.aaa213,a.aaa214,a.aaa215,a.aaa216,")
    			.append("       a.aaa217,a.aaa201")
    			.append("  from aa02 a")
    			.append(" where a.aaa201=?")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa201"));
	}
	
	
	/**
	 * 批量查询所有项目
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> query()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa202,a.aaa203,a.aaa204,a.aaa205,a.aaa206,")
    			.append("       a.aaa207,a.aaa208,a.aaa209,a.aaa210,a.aaa211,")
    			.append("       a.aaa212,a.aaa213,a.aaa214,a.aaa215,a.aaa216,")
    			.append("       a.aaa217,a.aaa201")
				.append("  from aa02 a")
				.append("  where a.aaa101=?")//查询顶级项目且属于当前公司
				;

		return this.queryForList(sql.toString(),this.get("aaa101"));
	}
	
	
	/**
	 * 用于添加项目
	 * @return
	 * @throws Exception
	 */
	public boolean addProject()throws Exception
	{
		int aaa201 = Tools.getSequence("aaa201");
		this.put("aaa201", aaa201);
		
		StringBuilder sql=new StringBuilder()
				.append("insert into aa02(aaa201,aaa101,aaa202,aaa203,aaa204,aaa205,")
				.append("				aaa206,aaa207,aaa208,aaa209,aaa210,")
				.append("				aaa211,aaa212,aaa213,aaa214,aaa215,")
				.append("				aaa216,aaa217)")
				.append("		value(?,?,?,?,?,?,")
				.append("			  ?,?,?,?,?,")
				.append("			  ?,?,?,?,?,")
				.append("			  ?,?)")
    			;
		Object []args = {//默认创建顶级项目
				aaa201,
				this.get("aaa101"),
				this.get("aaa202"),
				this.get("aaa203"),
				this.get("aaa204"),
				this.get("aaa205"),
				
				this.get("aaa206"),
				this.get("aaa207"),
				this.get("aaa208"),
				this.get("aaa209"),
				this.get("aaa210"),
				
				this.get("aaa211"),
				this.get("aaa212"),
				this.get("aaa213"),
				this.get("aaa214"),
				this.get("aaa215"),
				
				this.get("aaa216"),
				this.get("aaa217")
			};


		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	/**
	 * 用于修改项目信息
	 * @return
	 * @throws Exception
	 */
	public boolean modifyProject()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa02 set aaa202=?,aaa203=?,aaa204=?,aaa205=?,aaa206=?,")
				.append("				 aaa207=?,aaa208=?,aaa209=?,aaa210=?,aaa211=?,")
				.append("   			 aaa212=?,aaa213=?,aaa214=?,aaa215=?,aaa216=?,aaa217=?")
				.append(" where aaa201=?")
    			;
		Object []args = {
				this.get("aaa202"),
				this.get("aaa203"),
				this.get("aaa204"),
				this.get("aaa205"),
				this.get("aaa206"),
				
				this.get("aaa207"),
				this.get("aaa208"),
				this.get("aaa209"),
				this.get("aaa210"),
				this.get("aaa211"),
				
				this.get("aaa212"),
				this.get("aaa213"),
				this.get("aaa214"),
				this.get("aaa215"),
				this.get("aaa216"),
				this.get("aaa217"),
				
				this.get("aaa201")
			};
		
		return this.executeUpdate(sql.toString(), args)>0;
	}

	/**
	 * 删除项目
	 * @return
	 * @throws Exception
	 */
	public boolean delByIdProject()throws Exception
	{
		String sql = "delete from aa02 where aaa201 = ?";
		
		Object id = this.get("aaa201");
		
		return this.executeUpdate(sql, id)>0;
	}
	
	/**
	 * 批量删除项目
	 * @return
	 * @throws Exception
	 */
	private boolean deleteProjects() throws Exception
	{
		String sql = "delete from aa02 where aaa201 = ?";
		return this.batchUpdate(sql, this.getIdList("idlist"));
	}
}
