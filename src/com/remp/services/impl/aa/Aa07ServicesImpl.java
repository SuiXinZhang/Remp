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
    			.append("select a.aaa701,a.aaa702,a.aaa703,a.aaa704,a.aaa705,a.aaa706,a.aaa707,a.aaa708")
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
	public List<Map<String,String>> query()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("select a.aaa701,a.aaa702,a.aaa703,a.aaa704,a.aaa705,")
				.append("       a.aaa706,a.aaa707,a.aaa708")
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
				.append("				  aaa705,aaa706,aaa707,aaa708)")
				.append("		value(?,?,?,?,?,")
				.append("			  ?,?,?,?)")
    			;
		Object []args = {//Ĭ�ϴ���������Ŀ
				aaa701,
				this.get("aaa601"),
				this.get("aaa702"),
				this.get("aaa703"),
				this.get("aaa704"),
				
				this.get("aaa705"),
				this.get("aaa706"),
				this.get("aaa707"),
				this.get("aaa708"),
			};
		this.appendSql(sql.toString(), args);
		
		//���ɷ���
		StringBuilder sql2 = new StringBuilder()
				.append("insert into aa08(aaa701,aaa802,aaa803,aaa804,aaa805,")
				.append("				  aaa806,aaa807,aaa808,aaa809,aaa810,")
				.append("				  aaa811,aaa812)")
				.append("		value(?,?,?,?,?,")
				.append("			  ?,?,?,?,?,")
				.append("			  ?,?)")
				;
		
		
		for(int i=1;i<=Integer.parseInt((String) this.get("aaa704"));i++)//¥����
		{
			for(int j=1;j<=Integer.parseInt((String) this.get("aaa705"));j++)//��Ԫ��
			{
				for(int k=1;k<=Integer.parseInt((String) this.get("aaa706"));k++)//ÿ�㻧��
				{
					StringBuilder roomNum = new StringBuilder("A"+(String)this.get("aaa601")+"B"+aaa701+"R");//���ɷ�����
					StringBuilder room = new StringBuilder("");//���ɷ����
					if(j<10)
					{
						roomNum.append("0"+j);room.append("0"+j); 
					}
					else
					{
						roomNum.append(j);room.append(j); 
					}
					if(i<10) 
					{
						roomNum.append("0"+i);room.append("0"+i); 
					}else 
					{
						roomNum.append(i);room.append(i); 
					}
					if(k<10) {
						roomNum.append("0"+k);room.append("0"+k);
					} else 
					{
						roomNum.append(k);room.append(k); 
					}
					
					Object []args2 = {//����Ĭ�Ϸ�������
							aaa701,	                                    //�ո����ɵ�¥����ˮ��
							roomNum.toString(),	//������루������ˮ��+¥����ˮ��+��Ԫ��+¥���+���ţ�
							room.toString(),                                   //�����
							(String)this.get("aaa708")+this.get("aaa702")+"��",  //��ַ(ҳ���Զ�¼��)
							"01",                                       //״̬ Ĭ��01�ȴ�
						
							"����",	                                    //�������� Ĭ������
							null,                                       //���ͱ���
							null,                                       //Ĭ����д���ͽ�������
							null,							            //Ĭ����д���ͽ����ܼۣ�����*�����
							null,                                       //Ĭ����д�������ڵ���
							null,                                        //Ĭ����д���������ܼ�
							null,                                        //��ע
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
				.append("update aa07 set aaa702=?,aaa703=?,aaa707=?")
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
	 * ɾ��¥����Ϣ(����ɾ��¥����Ӧ����)
	 * @return
	 * @throws Exception
	 */
	public boolean delByIdBuilding()throws Exception
	{
		String sql = "delete from aa08 where aaa701 = ?";
		Object id = this.get("aaa701");
		this.executeUpdate(sql, id);
		
		
		
		String sql2 = "delete from aa07 where aaa701 = ?";
		
		return this.executeUpdate(sql2, id)>0;
	}
	
	/**
	 * ����ɾ��¥��
	 * @return
	 * @throws Exception
	 */
	public boolean deleteBuildings()throws Exception
	{
		String sql = "delete from aa08 where aaa701 = ?";
		this.batchUpdate(sql, this.getIdList("idlist"));
		
		String sql2 = "delete from aa07 where aaa701 = ?";
		return this.batchUpdate(sql2, this.getIdList("idlist"));
	}
}
