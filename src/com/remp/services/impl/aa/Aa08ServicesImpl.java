package com.remp.services.impl.aa;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

/**
 * ������Ϣ����һʵ����ѯ��������ѯ����������������ѯ��ɾ����һʵ��������ɾ�����޸ĵ�һʵ���������޸ģ����ɷ��䣩
 * @author Phoenix
 *
 */
public class Aa08ServicesImpl extends JdbcServicesSupport {
	/**
	 * ���ڲ�ѯ��ǰ����Ļ�����Ϣ
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa802,a.aaa803,a.aaa804,a.aaa805,a.aaa806,")
				.append("       a.aaa807,a.aaa808,a.aaa809,a.aaa810,a.aaa811,")
				.append("       a.aaa812")
    			.append("  from aa08 a")
    			.append(" where a.aaa801=?")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa801"));
	}
	
	/**
	 * ��ѯ��ǰ¥�������з���
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> findAllRooms()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa801,a.aaa802,a.aaa803,a.aaa804,a.aaa805,")
				.append("       a.aaa806,a.aaa807,a.aaa808,a.aaa809,a.aaa810,")
				.append("       a.aaa811,,a.aaa812")
				.append("  from aa08 a")
				.append("  where a.aaa701=?")
				;

		return this.queryForList(sql.toString(),this.get("aaa701"));
	}
	
	/**
	 * ����������ѯ����
	 */
	public List<Map<String,String>> query()throws Exception
	{
		//��ȡҳ�洫�ݵ�dto,���仹ԭΪ��ѯ��������
		Object aaa802 = this.get("qaaa802");  //�������
		Object aaa803 = this.get("qaaa803");  //����ţ�ģ����ѯ��
		Object aaa804 = this.get("qaaa804");  //��ַ��ģ����ѯ��
		Object aaa805 = this.get("qaaa805");  //״̬
		Object aaa806 = this.get("qaaa806"); //��������
		Object aaa807 = this.get("qaaa807"); //���ͱ���
		Object baaa808 = this.get("baaa808"); //������������
		Object eaaa808 = this.get("eaaa808"); //������������
		Object baaa809 = this.get("baaa809"); //�����ܼ�����
		Object eaaa809 = this.get("eaaa809"); //�����ܼ�����
		Object baaa810 = this.get("baaa810"); //���ڵ�������
		Object eaaa810 = this.get("eaaa810"); //���ڵ�������
		Object baaa811 = this.get("baaa811"); //�����ܼ�����
		Object eaaa811 = this.get("eaaa811"); //�����ܼ�����
		
		//����SQL����
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa801,a.aaa802,a.aaa803,a.aaa804,a.aaa805,")
				.append("       a.aaa806,a.aaa807,a.aaa808,a.aaa809,a.aaa810,")
				.append("       a.aaa811,,a.aaa812")
				.append("  from aa08 a")
				;
		
		List<Object> param = new ArrayList<>();//��ʵ�Ĳ����б�
		//ƴ�Ӳ�ѯ���,������ѯ������ӵ������б���
		if(this.isNotNull(aaa802))
		{
			sql.append(" and a.aaa802 = ? ");
			param.add(aaa802);
		}
		if(this.isNotNull(aaa803))
		{
			sql.append(" and a.aaa803 like ? ");
			param.add("%"+aaa803+"%");
		}
		if(this.isNotNull(aaa804))
		{
			sql.append(" and a.aaa804 like ? ");
			param.add("%"+aaa804+"%");
		}
		if(this.isNotNull(aaa805))
		{
			sql.append(" and a.aaa805 = ? ");
			param.add(aaa805);
		}
		if(this.isNotNull(aaa806))
		{
			sql.append(" and a.aaa806 = ? ");
			param.add(aaa806);
		}
		if(this.isNotNull(aaa807))
		{
			sql.append(" and a.aaa807 = ? ");
			param.add(aaa807);
		}
		if(this.isNotNull(baaa808))
		{
			sql.append(" and a.aaa808 >= ? ");
			param.add(baaa808);
		}
		if(this.isNotNull(eaaa808))
		{
			sql.append(" and a.aaa808 <= ? ");
			param.add(eaaa808);
		}
		if(this.isNotNull(baaa809))
		{
			sql.append(" and a.aaa809 >= ? ");
			param.add(baaa809);
		}
		if(this.isNotNull(eaaa809))
		{
			sql.append(" and a.aaa809 <= ? ");
			param.add(eaaa809);
		}
		if(this.isNotNull(baaa810))
		{
			sql.append(" and a.aaa810 >= ? ");
			param.add(baaa810);
		}
		if(this.isNotNull(eaaa810))
		{
			sql.append(" and a.aaa810 <= ? ");
			param.add(eaaa810);
		}
		if(this.isNotNull(baaa811))
		{
			sql.append(" and a.aaa811 >= ? ");
			param.add(baaa811);
		}
		if(this.isNotNull(eaaa811))
		{
			sql.append(" and a.aaa811 <= ? ");
			param.add(eaaa811);
		}
		
		return this.queryForList(sql.toString(), param.toArray());
	}

	/**
	 * ɾ����һʵ��
	 * @return
	 * @throws Exception
	 */
	public boolean deleteById()throws Exception
	{
		String sql = "delete from aa08 where aaa801 = ?";
		
		Object id = this.get("aaa801");
		
		return this.executeUpdate(sql, id)>0;
	}
	
	/**
	 * ����ɾ������
	 * @return
	 * @throws Exception
	 */
	public boolean deleteRooms() throws Exception
	{
		//��������ɾ�����
		String sql = "delete from aa08 where aaa801=?";
		
		//��ȡҪɾ�������ݵ�id�б�
		String tem[] = this.getIdList("idlist");
		
		return this.batchUpdate(sql, tem);
	}

	/**
	 * �޸ĵ�һ������Ϣ
	 * @return
	 * @throws Exception
	 */
	public boolean modifyRoom()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa08 set aaa804=?,aaa805=?,aaa806=?,aaa807=?,")
				.append("				 aaa808=?,aaa809=?,aaa810=?,aaa811=?,")
				.append("   			 aaa812=?")
				.append(" where aaa801=?")
    			;
		Object tem[]= {
				this.get("aaa804"),
				this.get("aaa805"),
				this.get("aaa806"),
				this.get("aaa807"),
				this.get("aaa808"),
				
				this.get("aaa809"),
				this.get("aaa810"),
				this.get("aaa811"),
				this.get("aaa812"),

				this.get("aaa801")
		};
		
		return this.executeUpdate(sql.toString(), tem)>0;
	}

	/**
	 * �����޸ķ�����Ϣ
	 * @return
	 * @throws Exception
	 */
	public boolean modifyRooms()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa08 set aaa804=?,aaa805=?,aaa806=?,aaa807=?,")
				.append("				 aaa808=?,aaa809=?,aaa810=?,aaa811=?,")
				.append("   			 aaa812=?")
				.append(" where aaa801=?")
    			;
		Object stateList[]= {
				this.get("aaa804"),
				this.get("aaa805"),
				this.get("aaa806"),
				this.get("aaa807"),
				this.get("aaa808"),
				
				this.get("aaa809"),
				this.get("aaa810"),
				this.get("aaa811"),
				this.get("aaa812")
		};
		
		//��ȡҪɾ�������ݵ�id�б�
		String idlist[] = this.getIdList("idlist");
		
		return this.batchUpdate(sql.toString(), stateList, idlist);
	}


}
