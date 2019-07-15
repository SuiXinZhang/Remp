package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

/**
 * �������ڲ���������Ϣ��aa06
 * @author Phoenix
 *
 */
public class Aa06ServicesImpl extends JdbcServicesSupport {
	
	/**
	 * ���ڲ�ѯ��ǰ����Ļ�����Ϣ
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa602,a.aaa603,a.aaa604,a.aaa605,a.aaa606")
    			.append("  from aa06 a")
    			.append(" where a.aaa601=?")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa601"));
	}
	
	/**
	 * ������ѯ��ǰ��Ŀ����������
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> findAllArea()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("select a.aaa601,a.aaa602,a.aaa603,a.aaa604,a.aaa605,")
				.append("       a.aaa606")
				.append("  from aa06 a")
				.append("  where a.aaa201=?")//��ѯ���������ڵ�ǰ��Ŀ
				;

		return this.queryForList(sql.toString(),this.get("aaa201"));
	}

	/**
	 * �ڵ�ǰ��Ŀ���������
	 * @return
	 * @throws Exception
	 */
	public boolean addArea()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("insert into aa06(aaa201,aaa602,aaa603,aaa604,aaa605,")
				.append("				  aaa606)")
				.append("		value(?,?,?,?,?,")
				.append("			  ?)")
    			;
		Object []args = {//Ĭ�ϴ���������Ŀ
				this.get("aaa201"),
				this.get("aaa602"),
				this.get("aaa603"),
				this.get("aaa604"),
				this.get("aaa605"),
				
				this.get("aaa606")
			};
		return this.executeUpdate(sql.toString(), args)>0;
	}

	
	/**
	 * �޸�������Ϣ
	 * @return
	 * @throws Exception
	 */
	public boolean modifyArea()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa06 set aaa602=?,aaa603=?,aaa604=?,aaa605=?,aaa606=?")
				.append(" where aaa601=?")
    			;
		Object tem[]= {
				this.get("aaa602"),
				this.get("aaa603"),
				this.get("aaa604"),
				this.get("aaa605"),
				this.get("aaa606"),
				
				this.get("aaa601") 
		};
		
		return this.executeUpdate(sql.toString(), tem)>0;
	}
	
	/**
	 * ɾ������
	 * @return
	 * @throws Exception
	 */
	public boolean delByIdArea()throws Exception
	{
		String sql = "delete from aa06 where aaa601 = ?";
		
		Object id = this.get("aaa601");
		
		return this.executeUpdate(sql, id)>0;
	}
	
}
