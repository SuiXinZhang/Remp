package com.remp.services.impl.ab;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.sun.org.apache.bcel.internal.generic.Select;

import jdk.nashorn.internal.objects.annotations.Where;

public class Ab03ServicesImpl extends JdbcServicesSupport
{
	/**
	 * �޸�Ӫ������
	 * @return
	 * @throws Exception
	 */
	public boolean modifyAb03()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ab03")
				.append("   set aab302=?,aab303=?,aab304=?,aab305=?,aab306=?,aab307=?")
				.append(" where aab301=?")
				;
		Object args[]={
				this.get("aab302"),
				this.get("aab303"),
				this.get("aab304"),
				this.get("aab305"),
				this.get("aab306"),
				this.get("aab307"),
				this.get("aab301")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	/**
	 * ����ɾ��
	 * @return
	 * @throws Exception
	 */
	public boolean batchDelete()throws Exception
	{
		String sql = "delete from ab03 where aab301=?";
		//��ȡҳ��idlist
		String idlist[] = this.getIdList("idlist");
		
		return this.batchUpdate(sql, idlist);
	}
	
	/**
	 * ��һʵ��ɾ��
	 * @return
	 * @throws Exception
	 */
	public boolean delById() throws Exception
	{
		String sql = "delete from ab03 where aab301=?";
		return this.executeUpdate(sql, this.get("aab301"))>0;
	}
	
	/**
	 * ���Ӫ������
	 * @return
	 * @throws Exception
	 */
	public boolean add() throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ab03(aab302,aab303,aab304,aab305,aab306,aab307)")
				.append(" values(?,?,?,?,?,?)")
				;
		Object args[] = {
				this.get("aab302"),
				this.get("aab303"),
				this.get("aab304"),
				this.get("aab305"),
				this.get("aab306"),
				this.get("aab307")
		};
		
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	/**
	 * ����������ѯ
	 */
	@Override
	public List<Map<String, String>> query() throws Exception 
	{
		//��ԭҳ������
		Object qaab302 = this.get("qaab302");
		Object qaab304 = this.get("qaab304");
		Object qaab305 = this.get("qaab305");
		Object qaab306 = this.get("qaab306");
		
		StringBuilder sql = new StringBuilder()
				.append("select aab301,aab302,aab303,aab304,aab305,aab306")
				.append("  from ab03")
				.append(" where true")
				;
		
		//�����б�
		List<Object> paramList = new ArrayList<>();

		if (isNotNull(qaab302)) 
		{
			sql.append(" and aab302 like ?");
			paramList.add("%"+qaab302+"%");
		}
		if (isNotNull(qaab304)) 
		{
			sql.append(" and aab304=?");
			paramList.add(qaab304);
		}
		if (isNotNull(qaab305)) 
		{
			sql.append(" and aab305=?");
			paramList.add(qaab305);
		}
		if (isNotNull(qaab306)) 
		{
			sql.append(" and aab306=?");
			paramList.add(qaab306);
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
				.append("select aab301,aab302,aab303,aab304,aab305,aab306,aab307")
				.append("  from ab03")
				.append(" where aab301=?")
				;
		return this.queryForMap(sql.toString(), this.get("aab301"));
	}
}
