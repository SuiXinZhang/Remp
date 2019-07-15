package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

/**
 * 此类用于操作付款方式及折扣表
 * @author Phoenix
 *
 */
public class Aa09ServicesImpl extends JdbcServicesSupport{
	
	/**
	 * 查询付款方式
	 * @return
	 * @throws Exception
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa902,a.aaa903,a.aaa904,a.aaa905,a.aaa906,")
    			.append("       a.aaa907,a.aaa908,a.aaa909,a.aaa910,a.aaa911")
    			.append("  from aa09 a")
    			.append(" where a.aaa901=?")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa901"));
	}
	
	/**
	 * 批量查询所有付款方式
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> findAllMethod()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("select a.aaa901,a.aaa902,a.aaa903,a.aaa904,a.aaa905,")
				.append("       a.aaa906,a.aaa907,a.aaa908,a.aaa909,a.aaa910,")
				.append("       a.aaa911")
				.append("  from aa09 a")
				.append("  where a.aaa201=?")//查询顶级项目且属于当前项目
				;

		return this.queryForList(sql.toString(),this.get("aaa201"));
	}

	/**
	 * 添加付款方式
	 * @return
	 * @throws Exception
	 */
	public boolean addMethod()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("insert into aa09(aaa201,aaa902,aaa903,aaa904,aaa905,")
				.append("				  aaa906,aaa907,aaa908,aaa909,aaa910,")
				.append("				  aaa911)")
				.append("		value(?,?,?,?,?,")
				.append("			  ?,?,?,?,?,")
				.append("			  ?)")
    			;
		Object []args = {//默认创建顶级项目
				this.get("aaa201"),
				this.get("aaa902"),
				this.get("aaa903"),
				this.get("aaa904"),
				this.get("aaa905"),
				
				this.get("aaa906"),
				this.get("aaa907"),
				this.get("aaa908"),
				this.get("aaa909"),
				this.get("aaa910"),
				
				this.get("aaa911")
			};


		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	/**
	 * 用于修改付款方式信息
	 * @return
	 * @throws Exception
	 */
	public boolean modifyMethod()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa09 set aaa902=?,aaa903=?,aaa904=?,aaa905=?,aaa906=?,")
				.append("				 aaa907=?,aaa908=?,aaa909=?,aaa910=?,aaa911=?")
				.append(" where aaa901=?")
    			;
		Object []args = {
				this.get("aaa902"),
				this.get("aaa903"),
				this.get("aaa904"),
				this.get("aaa905"),
				this.get("aaa906"),
				
				this.get("aaa907"),
				this.get("aaa908"),
				this.get("aaa909"),
				this.get("aaa910"),
				this.get("aaa911"),
				
				this.get("aaa201")
			};
		
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	/**
	 * 删除付款方式
	 * @return
	 * @throws Exception
	 */
	public boolean delByIdProject()throws Exception
	{
		String sql = "delete from aa09 where aaa901 = ?";
		
		Object id = this.get("aaa901");
		
		return this.executeUpdate(sql, id)>0;
	}
}
