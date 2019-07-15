package com.remp.services.impl.ab;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.eclipse.jdt.internal.compiler.ast.ThisReference;

import com.remp.services.JdbcServicesSupport;

import jdk.internal.org.objectweb.asm.tree.IntInsnNode;

public class Ab01ServicesImpl extends JdbcServicesSupport 
{
	/**
	 * ����ɾ��
	 * @return
	 * @throws Exception
	 */
	private boolean batchDelete()throws Exception
	{
		String sql = "delete from ab01 where aab101=?";
		//��ȡҳ��idlist����
		String idlist[] = this.getIdList("idlist");
		
		return this.batchUpdate(sql, idlist);
	}
			
	
	
	/**
	 * ��һɾ��
	 * @return
	 * @throws Exception
	 */
	private boolean delById() throws Exception
	{
		String sql = "delete from ab01 where aab101=?";
		return this.executeUpdate(sql, this.get("aab101"))>0;
	}
	
	/**
	 * �޸����ۼƻ�
	 * @return
	 * @throws Exception
	 */
	private boolean modifyPlan()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ab01 a")
				.append("	set a.aab102=?,a.aab103=?,a.aab104=?,a.aab105=?,a.aab106=?,")
				.append("		a.aab107=?,a.aab108=?,a.aab109=?,a.aab110=?")
				.append("	where a.aab101=?")
				;
		
		Object args[]={
				this.get("aab102"),
				this.get("aab103"),
				this.get("aab104"),
				this.get("aab105"),
				this.get("aab106"),
				this.get("aab107"),
				this.get("aab108"),
				this.get("aab109"),
				this.get("aab110"),
				this.get("aab101")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	
	/**
	 * ��������ۼƻ�
	 * @return
	 * @throws Exception
	 */
	private boolean addPlan()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ab01(aab102,aab103,aab105,aab106,")
				.append("				  aab107,aab108,aab109,aab110)")
				.append("		   values(?,?,?,?,")
				.append("		          ?,?,?,?);")
				;
		
		//��������
		Object args[]={
				this.get("aab102"),
				this.get("aab103"),
				this.get("aab105"),
				this.get("aab106"),
				this.get("aab107"),
				this.get("aab108"),
				this.get("aab109"),
				this.get("aab110")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	
	/**
	 * ����������ѯ
	 */
	public List<Map<String, String>> query()throws Exception
	{
		//��ԭҳ���ѯ����
		Object qaab102 = this.get("qaab102");
		Object year = this.get("year");
		Object month = this.get("month");
		
		//����SQL
		StringBuilder sql = new StringBuilder()
				.append("select aab101,aab102,aab103,aab105,aab106,")
				.append("		aab107,aab108,aab109,aab110")
				.append("  from ab01")
				.append(" where true")
				;
		
		//�����б�
		List<Object> paramList = new ArrayList<>();
		//��һ�жϲ�ѯ�����Ƿ�¼��
		if (this.isNotNull(qaab102))
		{
			sql.append(" and aab102 like ?");
			paramList.add("%"+qaab102+"%");
		}
		if (this.isNotNull(year))
		{
			sql.append(" and year(aab103)=?");
			paramList.add(year);
		}
		if (this.isNotNull(month))
		{
			sql.append(" and month(aab103)=?");
			paramList.add(month);
		}
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	
	/**
	 * ��һʵ����ѯ
	 */
	@Override
	public Map<String, String> findById() throws Exception 
	{
		StringBuilder sql = new StringBuilder()
				.append("select aab102,aab103,aab105,aab106,aab107,")
				.append("		aab108,aab109,aab110")
				.append("		from ab01")
				.append("    where aab101=?")
				;
		
		String sql2 = "select aab101 from ab02 where aab101=?";
		System.out.println(this.queryForMap(sql2, this.get("aab101")));
		if (this.queryForMap(sql2, this.get("aab101")) == null) 
		{
			for(int typeNum = 1; typeNum <= 4; typeNum++)
			{
				addDetail(typeNum);				
			}
		}
		
		//ִ�в�ѯ
		return this.queryForMap(sql.toString(), this.get("aab101"));
	}


	/**
	 * ������ۼƻ����Ӧ����ϸ����ʼ��
	 * @param typeNum
	 * @throws Exception
	 */
	private void addDetail(int typeNum) throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ab02(aab101,aab202,aab203,aab204,aab205,aab206,aab207)")
				.append("	values(?,?,?,?,?,?,?)")
				;
		Object args[] = {this.get("aab101"),typeNum,0,0,0,0,0};
		executeUpdate(sql.toString(), args);
	}
	
}
