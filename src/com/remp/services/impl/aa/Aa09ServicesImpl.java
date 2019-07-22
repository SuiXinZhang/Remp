package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

/**
 * �������ڲ������ʽ���ۿ۱�
 * @author Phoenix
 *
 */
public class Aa09ServicesImpl extends JdbcServicesSupport{
	
	/**
	 * ��ѯ���ʽ
	 * @return
	 * @throws Exception
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa901,a.aaa902,a.aaa903,a.aaa904,a.aaa905,")
    			.append("       a.aaa906,a.aaa907,a.aaa908,a.aaa909,a.aaa910,")
    			.append("       a.aaa911")
    			.append("  from aa09 a")
    			.append(" where a.aaa901=?")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa901"));
	}
	
	/**
	 * ������ѯ���и��ʽ
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> query()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("select a.aaa901,a.aaa902,a.aaa903,a.aaa904,a.aaa905,")
				.append("       a.aaa906,a.aaa907,a.aaa908,a.aaa909,a.aaa910,")
				.append("       a.aaa911")
				.append("  from aa09 a")
				.append("  where a.aaa201=?")//��ѯ������Ŀ�����ڵ�ǰ��Ŀ
				;

		return this.queryForList(sql.toString(),this.get("aaa201"));
	}

	/**
	 * ��Ӹ��ʽ
	 * @return
	 * @throws Exception
	 */
	public boolean addMethod()throws Exception
	{
		int aaa901 = Tools.getSequence("aaa901");
		this.put("aaa901", aaa901);
		
		StringBuilder sql=new StringBuilder()
				.append("insert into aa09(aaa901,aaa201,aaa902,aaa903,aaa904,")
				.append("				  aaa905,aaa906,aaa907,aaa908,aaa909,")
				.append("				  aaa910,aaa911)")
				.append("		value(?,?,?,?,?,")
				.append("			  ?,?,?,?,?,")
				.append("			  ?,?)")
    			;
		
		
		
		Object []args = {//Ĭ�ϴ���������Ŀ
				aaa901,
				
				this.get("aaa201"),
				this.get("aaa902"),
				this.get("aaa903"),
				this.get("aaa904"),
				this.get("aaa905"),
				
				this.get("aaa906"),
				this.get("aaa907"),
				this.get("aaa908"),
				this.get("aaa909"),
				this.get("aaa910"),
				
				this.get("aaa911")
			};


		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	/**
	 * �����޸ĸ��ʽ��Ϣ
	 * @return
	 * @throws Exception
	 */
	public boolean modifyMethod()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa09 set aaa902=?,aaa903=?,aaa904=?,aaa905=?,aaa906=?,")
				.append("				 aaa907=?,aaa908=?,aaa909=?,aaa910=?,aaa911=?")
				.append(" where aaa901=?")
    			;
		Object []args = {
				this.get("aaa902"),
				this.get("aaa903"),
				this.get("aaa904"),
				this.get("aaa905"),
				this.get("aaa906"),
				
				this.get("aaa907"),
				this.get("aaa908"),
				this.get("aaa909"),
				this.get("aaa910"),
				this.get("aaa911"),
				
				this.get("aaa201")
			};
		
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	/**
	 * ɾ�����ʽ
	 * @return
	 * @throws Exception
	 */
	public boolean delByIdMethod()throws Exception
	{
		String sql = "delete from aa09 where aaa901 = ?";
		
		Object id = this.get("aaa901");
		
		return this.executeUpdate(sql, id)>0;
	}
	
	/**
	 * ����ɾ�����ʽ
	 * @return
	 * @throws Exception
	 */
	private boolean deleteMethods() throws Exception
	{
		String sql = "delete from aa09 where aaa901 = ?";
		return this.batchUpdate(sql, this.getIdList("idlist"));
	}
}
