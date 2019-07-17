package com.remp.services.impl.aa;

import java.util.ArrayList;
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
		
		System.out.println("ͨ��id:"+this.get("aaa401")+"��ѯ");

		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa401,a.aaa402,a.aaa403,a.aaa404,a.aaa405,")
    			.append("       a.aaa406,a.aaa407,a.aaa408,a.aaa409,a.aaa410,a.aaa411,a.aaa301")
    			.append("  from aa04 a")
    			.append(" where a.aaa401=? ")
    			;
		Map<String,String> m = this.queryForMap(sql.toString(), this.get("aaa401"));
		
	    //��ȡ���еĲ��������û��޸�
		String sql2 = "select aaa301,aaa302 from aa03";
		List<Map<String,String>> l =this.queryForList(sql2);
		StringBuilder aaa302 = new StringBuilder(); 
		for(Map<String,String> tem:l) {
			aaa302.append(tem.get("aaa302")+":"+tem.get("aaa301")+",");
		}
		//ȥ�����һ������
		int a = aaa302.lastIndexOf(",");
		aaa302.delete(a, a);
		
		//������������ӵ�m��
		m.put("allaaa302", aaa302.toString());

		
	    return m;
	}
	
	/**
	 * ������ѯ����Ա��
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> query()throws Exception
	{
		//��ȡҳ�洫�ݵ�dto,���仹ԭΪ��ѯ��������
		Object aaa403 = this.get("qaaa403");  //���� ģ����ѯ
		Object aaa402 = this.get("qaaa402");  //���
		Object aaa404 = this.get("qaaa404");  //��λ(ģ��)
		Object aaa406 = this.get("qaaa406");  //����(ģ��)
		Object aaa407 = this.get("qaaa407");  //�Ա�
		Object baaa411 = this.get("baaa411"); //��ʼ����
		Object eaaa411 = this.get("eaaa411"); //��������
		
		//����SQL����
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa401,a.aaa402,a.aaa403,a.aaa404,a.aaa405,")
    			.append("       a.aaa406,a.aaa407,a.aaa408,a.aaa409,a.aaa410,a.aaa411,b.aaa302")
    			.append("  from aa04 a,aa03 b")
    			.append(" where a.aaa301=? and a.aaa301=b.aaa301")
    			;
		
		List<Object> param = new ArrayList<>();//��ʵ�Ĳ����б�
		param.add(this.get("aaa301"));
		
		//ƴ�Ӳ�ѯ���,������ѯ������ӵ������б���
		if(this.isNotNull(aaa403))
		{
			sql.append(" and a.aaa403 like ? ");
			param.add("%"+aaa403+"%");
		}
		if(this.isNotNull(aaa402))
		{
			sql.append(" and a.aaa402 = ? ");
			param.add(aaa402);
		}
		if(this.isNotNull(aaa404))
		{
			sql.append(" and a.aaa404 like ? ");
			param.add("%"+aaa404+"%");
		}
		if(this.isNotNull(aaa406))
		{
			sql.append(" and a.aaa406 like ? ");
			param.add("%"+aaa406+"%");
		}
		if(this.isNotNull(aaa407))
		{
			sql.append(" and a.aaa407 like ? ");
			param.add("%"+aaa407+"%");
		}
		if(this.isNotNull(baaa411))
		{
			sql.append(" and a.aaa411 >= ? ");
			param.add(baaa411);
		}
		if(this.isNotNull(eaaa411))
		{
			sql.append(" and a.aaa411 <= ? ");
			param.add(eaaa411);
		}
		
		return this.queryForList(sql.toString(), param.toArray() );
	}
	

	/**
	 * �ڵ�ǰ�����������Ա��
	 * @return
	 * @throws Exception
	 */
	public boolean addEmp()throws Exception
	{
		int aaa401 = Tools.getSequence("aaa401");
		this.put("aaa401", aaa401);
		
		String aaa402 = Tools.getEmpNumber("aaa402");
		this.put("aaa402", aaa402);
		
		StringBuilder sql=new StringBuilder()
    			.append("insert into aa04(aaa401,aaa301,aaa402,aaa403,aaa404,")
    			.append("                 aaa405,aaa406,aaa407,aaa408,aaa409,aaa410,aaa411)")
    			.append("          values(?,?,?,?,?,")
    			.append("                 ?,?,?,?,?,?,?)")
    			;
		
		Object []args = {
			aaa401,
			this.get("aaa301"),
			aaa402,
			this.get("aaa403"),
			this.get("aaa404"),
			
			this.get("aaa405"),
			this.get("aaa406"),
			this.get("aaa407"),
			this.get("aaa408"),
			this.get("aaa409"),
			this.get("aaa410"),
			this.get("aaa411")
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
		String sql2="select a.aaa302 from aa03 a where a.aaa301=?";
		Map<String,String> m = this.queryForMap(sql2, this.get("upaaa301"));
		
		
		
		StringBuilder sql=new StringBuilder()
				.append("update aa04 set aaa301=?,aaa403=?,aaa404=?,aaa405=?,aaa406=?,")
				.append("				 aaa407=?,aaa408=?,aaa409=?,aaa410=?,aaa411=?")
				.append(" where aaa401=?")
    			;
		Object []args = {
				this.get("upaaa301"),
				this.get("aaa403"),
				this.get("aaa404"),
				m.get("aaa302"),
				this.get("aaa406"),
				
				this.get("aaa407"),
				this.get("aaa408"),
				this.get("aaa409"),
				this.get("aaa410"),
				this.get("aaa411"),
				
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
	
	
	/**
	 * ����ɾ���Ŷ�
	 * @return
	 * @throws Exception
	 */
	public boolean deleteEmps()throws Exception
	{
		String sql = "delete from aa04 where aaa401 = ?";
		return this.batchUpdate(sql, this.getIdList("idlist"));
	}
}
