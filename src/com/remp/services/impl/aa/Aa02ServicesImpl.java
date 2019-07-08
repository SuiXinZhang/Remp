package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

/**
 * �������ڲ�����Ŀ��Ϣ��aa02
 * ��Ŀ������Ŀ-��������Ŀ������������
 * @author Phoenix
 *
 */
public class Aa02ServicesImpl extends JdbcServicesSupport {
	
	/**
	 * ���ڲ�ѯ��ǰ��Ŀ�Ļ�����Ϣ
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa202,a.aaa203,a.aaa204,a.aaa205,a.aaa206,")
    			.append("       a.aaa207,a.aaa208,a.aaa209,a.aaa210,a.aaa211,")
    			.append("       a.aaa212,a.aaa213,a.aaa214,a.aaa215,a.aaa216,")
    			.append("       a.aaa217,a.aaa218")
    			.append("  from aa02 a")
    			.append(" where a.aaa201=?")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa201"));
	}
	
	/**
	 * ����������ѯ��ǰ��Ŀ������Ŀ����Щ
	 */
	public List<Map<String,String>> findChildProject()throws Exception
	{
		if(this.get("aaa201")==null)//û�и�����Ŀ,˵��Ϊ��ѯ1����Ŀ
		{
			StringBuilder sql=new StringBuilder()
					.append("select a.aaa201,a.aaa202")
					.append("  from aa02 a")
					.append("  where a.aaa203=0 and a.aaa101=?")//��ѯ������Ŀ�����ڵ�ǰ��˾
					;

			return this.queryForList(sql.toString(),this.get("aaa101"));
		}
		else //��ѯ����Ŀ
		{
			StringBuilder sql = new StringBuilder()
					.append("select a.aaa201,a.aaa202")
					.append(" from aa02 a")
					.append(" where a.aaa203=?")
					;
			return this.queryForList(sql.toString(),this.get("aaa203"));
		}
	}
	
	
	/**
	 * ���������Ŀ
	 * @return
	 * @throws Exception
	 */
	public boolean addProject()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("insert into aa02(aaa101,aaa202,aaa203,aaa204,aaa205,")
				.append("				aaa206,aaa207,aaa208,aaa209,aaa210,")
				.append("				aaa211,aaa212,aaa213,aaa214,aaa215,")
				.append("				aaa216,aaa217,aaa218)")
				.append("		value(?,?,?,?,?,")
				.append("			  ?,?,?,?,?,")
				.append("			  ?,?,?,?,?,")
				.append("			  ?,?,?)")
    			;
		Object []args = {//Ĭ�ϴ���������Ŀ
				this.get("aaa101"),
				this.get("aaa202"),
				0,
				this.get("aaa204"),
				this.get("aaa205"),
				
				this.get("aaa206"),
				this.get("aaa207"),
				this.get("aaa208"),
				this.get("aaa209"),
				this.get("aaa210"),
				
				this.get("aaa211"),
				this.get("aaa212"),
				this.get("aaa213"),
				this.get("aaa214"),
				this.get("aaa215"),
				
				this.get("aaa216"),
				this.get("aaa217"),
				this.get("aaa218"),
			};
		
		if(this.get("aaa201")!=null)//�ڵ�ǰ��Ŀ�´�������Ŀ
		{
			args[2]=this.get("aaa101");//������ˮ�Ÿ�Ϊ��ǰ��Ŀ��ˮ��
		}

		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	/**
	 * �����޸���Ŀ��Ϣ
	 * @return
	 * @throws Exception
	 */
	public boolean modifyProject()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa02 set aaa202=?,aaa204=?,aaa205=?,aaa206=?,aaa207=?,")
				.append("				 aaa208=?,aaa209=?,aaa210=?,aaa211=?,aaa212=?,")
				.append("   			 aaa213=?,aaa214=?,aaa215=?,aaa216=?,aaa217=?,aaa218=?")
				.append(" where aaa201=?")
    			;
		Object []args = {//Ĭ�ϴ���������Ŀ
				this.get("aaa202"),
				this.get("aaa204"),
				this.get("aaa205"),
				this.get("aaa206"),
				this.get("aaa207"),
				
				this.get("aaa208"),
				this.get("aaa209"),
				this.get("aaa210"),
				this.get("aaa211"),
				this.get("aaa212"),
				
				this.get("aaa213"),
				this.get("aaa214"),
				this.get("aaa215"),
				this.get("aaa216"),
				this.get("aaa217"),
				this.get("aaa218"),
			};
		
		return this.executeUpdate(sql.toString(), args)>0;
	}

	/**
	 * ɾ����Ŀ
	 * @return
	 * @throws Exception
	 */
	public boolean delByIdProject()throws Exception
	{
		String sql = "delete from aa02 where aab201 = ?";
		
		Object id = this.get("aaa201");
		System.out.println("id"+id);
		
		return this.executeUpdate(sql, id)>0;
	}
}
