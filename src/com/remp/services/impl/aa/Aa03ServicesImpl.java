package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

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
    			.append("select a.aaa301,a.aaa302,a.aaa303")
    			.append("  from aa03 a")
    			.append(" where a.aaa301=?")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa301"));
	}

	/**
	 * ������ѯ��������Щ
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> query()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("select a.aaa301,a.aaa302,a.aaa303")
				.append("  from aa03 a")
				.append("  where a.aaa201=?")
				;

		return this.queryForList(sql.toString(),this.get("aaa201"));
	}
	
	/**
	 * ����Ŷ�
	 * @return
	 * @throws Exception
	 */
	public boolean addTeam()throws Exception
	{
		int aaa301 = Tools.getSequence("aaa301");
		this.put("aaa301", aaa301);//�������ɵ��Ŷ���ˮ��put
		
		StringBuilder sql=new StringBuilder()
				.append("insert into aa03(aaa301,aaa201,aaa302,aaa303)")
				.append("		value(?,?,?,?)")
    			;
		Object []args = {//Ĭ�ϴ��������Ŷ�
				aaa301,
				this.get("aaa201"),
				this.get("aaa302"),
				this.get("aaa303")
			};
		
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
				.append("update aa03 set aaa302=?,aaa303=?")
				.append(" where aaa301=?")
    			;
		Object []args = {
				this.get("aaa302"),
				this.get("aaa303"),

				this.get("aaa301")
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
	
	/**
	 * ����ɾ���Ŷ�
	 * @return
	 * @throws Exception
	 */
	public boolean deleteTeams()throws Exception
	{
		String sql = "delete from aa03 where aaa301 = ?";
		return this.batchUpdate(sql, this.getIdList("idlist"));
	}
}
