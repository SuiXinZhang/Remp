package com.remp.services.impl.aa;

import java.util.Map;

import com.remp.services.JdbcServicesSupport;

/**
 * 此类用于操作公司信息表aa01
 * @author Phoenix
 *
 */
public class Aa01ServicesImpl extends JdbcServicesSupport {
	

	/**
	 * 用于查询本公司信息
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa102,a.aaa103,a.aaa104,a.aaa105,a.aaa106,")
    			.append("       a.aaa107,a.aaa108,a.aaa109")
    			.append("  from aa01 a")
    			.append(" where a.aaa101=?")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa101"));
	}
	
	/**
	 * 修改公司信息
	 * @return
	 * @throws Exception
	 */
	public boolean modifyCompany()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa01 set aaa102=?,aaa104=?,aaa105=?,aaa106=?,")
				.append("				 aaa107=?,aaa108=?,aaa109=?")
				.append(" where aaa101=?")
    			;
		Object tem[]= {
				this.get("aaa102"),
				this.get("aaa103"),
				this.get("aaa104"),
				this.get("aaa105"),
				this.get("aaa106"),
				
				this.get("aaa107"),
				this.get("aaa108"),
				this.get("aaa109"),
				
				this.get("aaa101") 
		};
		
		return this.executeUpdate(sql.toString(), tem)>0;
	}
	
	/**
	 * 添加公司信息
	 * @return
	 * @throws Exception
	 */
	public boolean addCompany()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("insert into aa01(aaa102,aaa103,aaa104,aaa105,aaa106,")
				.append("				aaa107,aaa108,aaa109)")
				.append("		value(?,?,?,?,?,")
				.append("				?,?,?)")
    			;
		Object []args = {
				this.get("aaa102"),
				this.get("aaa103"),
				this.get("aaa104"),
				this.get("aaa105"),
				this.get("aaa106"),
				
				this.get("aaa107"),
				this.get("aaa108"),
				this.get("aaa109")
		};
		
		return this.executeUpdate(sql.toString(), args)>0;
	}

}
