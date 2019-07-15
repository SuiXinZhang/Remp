package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.system.tools.Tools;
import com.remp.services.JdbcServicesSupport;

/**
 * �������ڲ���Ա����Ϣ��
 * @author Phoenix
 *
 */
public class Aa04ServicesImpl extends JdbcServicesSupport {
	
	/**
	 * ���ڲ�ѯ��ǰԱ����Ϣ
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa402,a.aaa403,a.aaa404,a.aaa405,a.aaa406,")
    			.append("       a.aaa407,a.aaa408,a.aaa409,a.aaa410")
    			.append("  from aa04 a")
    			.append(" where a.aaa401=?")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa401"));
	}
	
	/**
	 * ������ѯ����Ա��
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> findAllEmp()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa402,a.aaa403,a.aaa404,a.aaa405,a.aaa406,")
    			.append("       a.aaa407,a.aaa408,a.aaa409,a.aaa410")
    			.append("  from aa04 a")
    			.append(" where a.aaa301=?")
    			;
		return this.queryForList(sql.toString(), this.get("aaa301"));
	}
	

	/**
	 * �ڵ�ǰ�����������Ա��
	 * @return
	 * @throws Exception
	 */
	public boolean addEmp()throws Exception
	{
		String aaa402 = Tools.getEmpNumber("aaa402");
		this.put("aaa402", aaa402);
		
		StringBuilder sql=new StringBuilder()
    			.append("insert into aa04(aaa301,aaa402,aaa403,aaa404,aaa405,")
    			.append("                 aaa406,aaa407,aaa408,aaa409,aaa410)")
    			.append("          values(?,?,?,?,?,")
    			.append("                 ?,?,?,?,?)")
    			;
		
		Object []args = {
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
	 * �޸�Ա����Ϣ�����Ĳ�����δʵ�֣�
	 * @return
	 * @throws Exception
	 */
	public boolean modifyEmp()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa04 set aaa402=?,aaa403=?,aaa404=?,aaa405=?,aaa406=?,")
				.append("				 aaa407=?,aaa408=?,aaa409=?,aaa410=?")
				.append(" where aaa401=?")
    			;
		Object []args = {
				this.get("aaa402"),
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
	 * ɾ��Ա��
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
