package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

/**
 * �������ڲ����ŶӲ��ű�aa03
 * ���ſ��������·ּ�
 * @author Phoenix
 *
 */
public class Aa03ServicesImpl extends JdbcServicesSupport {
	
	/**
	 * ���ڲ�ѯ��ǰ�ŶӵĻ�����Ϣ
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
	 * ������ѯ��ǰ�Ŷӵ����Ŷ�����Щ
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> findChildTeam()throws Exception
	{
		if(this.get("aaa301")==null)//û�и����Ŷ�,˵��Ϊ��ѯ1���Ŷ�
		{
			StringBuilder sql=new StringBuilder()
					.append("select a.aaa301,a.aaa303")
					.append("  from aa03 a")
					.append("  where a.aaa302=0 and a.aaa201=?")//��ѯ�����Ŷ������ڵ�ǰ��Ŀ
					;

			return this.queryForList(sql.toString(),this.get("aaa201"));
		}
		else //��ѯ���Ŷ�
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
	 * ����Ŷ�
	 * @return
	 * @throws Exception
	 */
	public boolean addTeam()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("insert into aa03(aaa201,aaa302,aaa303,aaa304,aaa305)")
				.append("		value(?,?,?,?,?)")
    			;
		Object []args = {//Ĭ�ϴ��������Ŷ�
				this.get("aaa201"),
				0,
				this.get("aaa303"),
				this.get("aaa304"),
				this.get("aaa305")
			};
		
		if(this.get("aaa201")!=null)//�ڵ�ǰ�Ŷ��´������Ŷ�
		{
			args[1]=this.get("aaa301");//������ˮ�Ÿ�Ϊ��ǰ�Ŷ���ˮ��
		}

		return this.executeUpdate(sql.toString(), args)>0;
		
	}
	
	/**
	 * �޸��Ŷ���Ϣ
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
	 * ɾ���Ŷ�
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
