package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

/**
 * 此类用于操作户型信息表(aa05)
 * @author Phoenix
 *
 */
public class Aa05ServicesImpl extends JdbcServicesSupport {
	
	/**
	 * 查询当前户型信息
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa501,a.aaa502,a.aaa503,a.aaa504,a.aaa505,")
    			.append("       a.aaa506,a.aaa507,a.aaa508")
    			.append("  from aa05 a")
    			.append(" where a.aaa501=?")
    			;
		return this.queryForMap(sql.toString(), this.get("aaa501"));
	}

	/**
	 * 查询所有户型
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> query()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("select a.aaa501,a.aaa502,a.aaa503,a.aaa504,a.aaa505,")
				.append("       a.aaa506,a.aaa507,a.aaa508")
				.append("  from aa05 a")
				.append("  where a.aaa201=?")//查询所有户型且属于当前项目
				;

		return this.queryForList(sql.toString(),this.get("aaa201"));
	}
	
	
	/**
	 * 添加户型
	 * @return
	 * @throws Exception
	 */
	public boolean addType()throws Exception
	{
		//查询该编号是否已存在
		String sql2 = "select aaa501 from aa05 where aaa502=?";
		
		if(this.queryForMap(sql2, this.get("aaa502"))!=null)//存在则不添加
		{
			return false;
		}
		int aaa501 = Tools.getSequence("aaa501");
		this.put("aaa501", aaa501);
		
		StringBuilder sql=new StringBuilder()
				.append("insert into aa05(aaa501,aaa201,aaa502,aaa503,aaa504,")
				.append("				  aaa505,aaa506,aaa507,aaa508)")
				.append("		value(?,?,?,?,?,")
				.append("			  ?,?,?,?)")
    			;
		Object []args = {//默认创建顶级项目
				aaa501,
				this.get("aaa201"),
				this.get("aaa502"),
				this.get("aaa503"),
				this.get("aaa504"),
				
				this.get("aaa505"),
				this.get("aaa506"),
				this.get("aaa507"),
				this.get("aaa508")
			};
		return this.executeUpdate(sql.toString(), args)>0;

	}
	
	/**
	 * 修改户型信息
	 * @return
	 * @throws Exception
	 */
	public boolean modifyType()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa05 set aaa502=?,aaa503=?,aaa504=?,aaa505=?,aaa506=?,")
				.append("				 aaa507=?,aaa508=?")
				.append(" where aaa501=?")
    			;
		Object tem[]= {
				this.get("aaa502"),
				this.get("aaa503"),
				this.get("aaa504"),
				this.get("aaa505"),
				this.get("aaa506"),
				
				this.get("aaa507"),
				this.get("aaa508"),
				
				this.get("aaa501") 
		};
		
		return this.executeUpdate(sql.toString(), tem)>0;
	}
	
	/**
	 * 删除户型
	 * @return
	 * @throws Exception
	 */
	public boolean delByIdType()throws Exception
	{
		String sql = "delete from aa05 where aaa501 = ?";
		
		Object id = this.get("aaa501");
		
		return this.executeUpdate(sql, id)>0;
	}
	
	/**
	 * 批量删除项目
	 * @return
	 * @throws Exception
	 */
	private boolean deleteType() throws Exception
	{
		String sql = "delete from aa05 where aaa501 = ?";
		return this.batchUpdate(sql, this.getIdList("idlist"));
	}
}
