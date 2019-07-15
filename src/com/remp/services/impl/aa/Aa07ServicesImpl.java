package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

/**
 * �������ڲ���¥����Ϣ��aa07
 * @author Phoenix
 *
 */
public class Aa07ServicesImpl extends JdbcServicesSupport{
	/**
	 * ���ڲ�ѯ��ǰ¥���Ļ�����Ϣ
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa702,a.aaa703,a.aaa704,a.aaa705,a.aaa706,a.aaa707")
    			.append("  from aa07 a")
    			.append(" where a.aaa701=?")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa701"));
	}
	
	/**
	 * ��ѯ��ǰ���������¥��
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> findAllBuilding()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("select a.aaa701,a.aaa702,a.aaa703,a.aaa704,a.aaa705,")
				.append("       a.aaa706,a.aaa707")
				.append("  from aa07 a")
				.append("  where a.aaa601=?")//��ѯ¥�������ڵ�ǰ����
				;

		return this.queryForList(sql.toString(),this.get("aaa601"));
	}
	
	/**
	 * �ڵ�ǰ���������¥��,���������ɷ���
	 * @return
	 * @throws Exception
	 */
	public boolean addBuilding()throws Exception
	{
		int aaa701 = Tools.getSequence("aaa701");
		this.put("aaa701", aaa701);
		
		//����¥��
		StringBuilder sql=new StringBuilder()
				.append("insert into aa07(aaa701,aaa601,aaa702,aaa703,aaa704,")
				.append("				  aaa705,aaa706,aaa707)")
				.append("		value(?,?,?,?,?,")
				.append("			  ?,?)")
    			;
		Object []args = {//Ĭ�ϴ���������Ŀ
				aaa701,
				this.get("aaa601"),
				this.get("aaa702"),
				this.get("aaa703"),
				this.get("aaa704"),
				this.get("aaa705"),
			
				this.get("aaa706"),
				this.get("aaa707")
			};
		this.appendSql(sql.toString(), args);
		
		//���ɷ���
		StringBuilder sql2 = new StringBuilder()
				.append("insert into aa08(aaa701,aaa802,aaa803,aaa804,aaa805,")
				.append("				  aaa806,aaa807,aaa808,aaa809,aaa810,")
				.append("				  aaa811)")
				.append("		value(?,?,?,?,?,")
				.append("			  ?,?,?,?,?,")
				.append("			  ?)")
				;
		
		
		for(int i=0;i<(Integer)(this.get("aaa704"));i++)//¥����
		{
			for(int j=0;j<(Integer)(this.get("aaa705"));j++)//��Ԫ��
			{
				for(int k=0;k<(Integer)(this.get("aaa706"));k++)//ÿ��ÿ��Ԫ����
				{
					
					Object []args2 = {//����Ĭ�Ϸ�������
							aaa701,	                                    //�ո����ɵ�¥����ˮ��
							this.get("aaa802"),	                        //������ˮ��
							(String)this.get("aaa802")+aaa701+j+i+k,	//������루������ˮ��+¥����ˮ��+��Ԫ��+¥���+���ţ�
							""+j+i+k,                                   //�����
							this.get("aaa804"),                         //��ַ(ҳ���Զ�¼��)
							"01",                                       //״̬ Ĭ��01�ȴ�
						
							"����",	                                    //�������� Ĭ������
							null,                                       //���ͱ���
							null,                                       //Ĭ����д���ͽ�������
							null,							            //Ĭ����д���ͽ����ܼۣ�����*�����
							null,                                       //Ĭ����д�������ڵ���
							null                                        //Ĭ����д���������ܼ�
						};
					
					this.appendSql(sql2.toString(), args2);
				}
			}
		}

		
		return this.executeTransaction();
	}
	
	/**
	 * �޸�¥����Ϣ(��������Ԫ�������������޸�)
	 * @return
	 * @throws Exception
	 */
	public boolean modifyBuilding()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa07 set aaa702=?,aaa703=?,aaa607=?")
				.append(" where aaa701=?")
    			;
		Object tem[]= {
				this.get("aaa702"),
				this.get("aaa703"),
				this.get("aaa707"),
				
				this.get("aaa701") 
		};
		
		return this.executeUpdate(sql.toString(), tem)>0;
	}
	
	/**
	 * ɾ��¥����Ϣ
	 * @return
	 * @throws Exception
	 */
	public boolean delByIdBuilding()throws Exception
	{
		String sql = "delete from aa07 where aaa701 = ?";
		
		Object id = this.get("aaa701");
		
		return this.executeUpdate(sql, id)>0;
	}
}
