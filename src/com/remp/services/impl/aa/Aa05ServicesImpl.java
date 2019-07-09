package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

/**
 * �������ڲ���������Ϣ��(aa05)
 * @author Phoenix
 *
 */
public class Aa05ServicesImpl extends JdbcServicesSupport {
	
	/**
	 * ��ѯ��ǰ������Ϣ
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa502,a.aaa503,a.aaa504,a.aaa505,a.aaa506,")
    			.append("       a.aaa507,a.aaa508")
    			.append("  from aa05 a")
    			.append(" where a.aaa501=?")
    			;
		return this.queryForMap(sql.toString(), this.get("aaa501"));
	}

	/**
	 * ��ѯ���л���
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> findAllType()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("select a.aaa501,a.aaa502,a.aaa503,a.aaa504,a.aaa505")
				.append("       a.aaa506,a.aaa507,a.aaa508")
				.append("  from aa05 a")
				.append("  where a.aaa201=?")//��ѯ���л��������ڵ�ǰ��Ŀ
				;

		return this.queryForList(sql.toString(),this.get("aaa201"));
	}
	
	/**
	 * ��ӻ���
	 * @return
	 * @throws Exception
	 */
	public boolean addType()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("insert into aa05(aaa201,aaa502,aaa503,aaa504,aaa505,")
				.append("				  aaa506,aaa507,aaa508)")
				.append("		value(?,?,?,?,?,")
				.append("			  ?,?,?)")
    			;
		Object []args = {//Ĭ�ϴ���������Ŀ
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
	 * �޸Ļ�����Ϣ
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
	 * ɾ����Ŀ
	 * @return
	 * @throws Exception
	 */
	public boolean delByIdType()throws Exception
	{
		String sql = "delete from aa05 where aaa501 = ?";
		
		Object id = this.get("aaa501");
		
		return this.executeUpdate(sql, id)>0;
	}
}
