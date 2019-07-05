package com.remp.services;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.remp.system.db.DBUtils;

public abstract class JdbcServicesSupport implements BaseServices
{
	/**************************************************************
	 * 	                       ����Ϊ���Զ���
	 **************************************************************/
	//����б�
	private List<PstmMetaData> pmdList = new ArrayList<>();
	private Map<String,Object> dto = null;
	@Override
	public void setMapDto(Map<String, Object> dto) {
		this.dto = dto;
	}
	
	
	protected final Object get(String key)
	{
		return this.dto.get(key);
	}
	
	protected final void put(String key,Object value)
	{
		this.dto.put(key, value);
	}
	
	
	 /**************************************************************
	 * 	                       ��������
	 **************************************************************/
	protected final boolean isNotNull(Object element)
		{
			return (element!=null) && (!element.equals(""));
		}
		
	protected final String[] getIdList(String key)
		{
			Object aab101 = dto.get(key);
			System.out.println(key+"222"+dto);
			//String idL[] = null;
			if(aab101 instanceof java.lang.String[])
			{
				return (String[])aab101;
			}else
			{
				System.out.println("111"+aab101);
				return new String[]{aab101.toString()};
			}
			
		}
	
	/**************************************************************
	    * 	                       ����Ϊ��������������ʵ�ַ�ʽ
	    **************************************************************/
		
	/**
	 * ִ������
	 * @return
	 * @throws Exception
	 */
	protected final boolean executeTransaction()throws Exception
		{
			
			boolean tag = false;
			DBUtils.beginTransaction();
			try
			{
				for(PstmMetaData pmd:pmdList)
				{
					pmd.executePreparedStatement();
				}
				DBUtils.commit();
				tag = true;
			}
			catch(Exception e)
			{
				DBUtils.rollback();
				e.printStackTrace();
			}
			finally
			{
				DBUtils.endTransection();
				for(PstmMetaData pmd:pmdList)
				{
					pmd.close();
				}
				pmdList.clear();
			}
			return tag;
		}
	
	
	/**
	 * ��������ɾ������
	 * <
	 *    delete  from  table where id=?
	 * >
	 * @param sql      ---  sql���
	 * @param idlist   ---  �����б�
	 * @return
	 * @throws Exception
	 */
	protected final void appendBatch(final String sql,final Object...idlist)throws Exception
	{
		PreparedStatement pstm = DBUtils.prepareStatement(sql);
		for(Object id:idlist)
		{
			pstm.setObject(1, id);
			pstm.addBatch();
		}
		regPstmObject(pstm);
	}
	
	/**
	 * ��״̬�޸�
	 * <
	 *   update table
	 *     set col1=?,col2=?,col3=?...coln=?
	 *   where id=?
	 *   ����:��һ��Ա���ϵ�ְ����ͬʱ��н
	 *   update ac01 
	 *       set aac111=aac111+?,aac112=? 
	 *     where aac101=?
	 * >
	 * @param sql
	 * @param stateList
	 * @param idlist
	 * @return
	 * @throws Exception
	 */
	protected final void appendBatch(final String sql,final Object stateList[],Object...idlist)throws Exception
	{
		PreparedStatement pstm = DBUtils.prepareStatement(sql);
		int index = 1;
		for(Object state:stateList)
		{
			pstm.setObject(index++, state);
		}
		for(Object id:idlist)
		{
			pstm.setObject(index, id);
			pstm.addBatch();
		}
		regPstmObject(pstm);
	}
	
	/**
	 * ��һ״̬������
	 * <
	 *    �ʺ�����SQL���
	 *    update table 
	 *       set col=?
	 *     where id=? 
	 * >
	 * @param sql      ---  sql���
	 * @param newState ---  ��һ�е�Ŀ��״̬
	 * @param idlist   ---  ��������
	 * @return
	 */
	protected final void appendBatch(final String sql, final Object newState, final Object...idlist) throws Exception
	{
		PreparedStatement pstm = DBUtils.prepareStatement(sql);
		pstm.setObject(1, newState);
		for(Object param:idlist)
		{
			pstm.setObject(2, param);
			pstm.addBatch();
		}
		regPstmObject(pstm);
	}
	
	/**
	 * ������б�,ע��SQL���
	 * @param pstm
	 */
	private void regPstmObject(PreparedStatement pstm)
	{
		PstmMetaData pmd = new PstmMetaData(pstm, true);
		pmdList.add(pmd);
	}
	
	/**
	 * Ϊ������ӷ�������SQL���
	 * <
	 *   delete from table where id=?
	 *   update table set col1=? where id=?
	 *   update table set col1=?,col2=?,col3=?.... where id=?
	 * >
	 * @param sql      ----  ִ�е�SQL���
	 * @param args     ----  �����б�
	 * @throws Exception
	 */
	protected final void appendSql(final String sql,final Object...args)throws Exception
	{
		PreparedStatement pstm = DBUtils.prepareStatement(sql);
		int index = 1;
		for(Object param:args)
		{
			pstm.setObject(index++, param);
		}
		
		PstmMetaData pmd = new PstmMetaData(pstm, false);
		pmdList.add(pmd);
	}
	
	
	
	   /**************************************************************
	    *  ����Ϊ��һ��������·���
	    **************************************************************/
		
	/**
 		 * ��״̬�޸�
	 * <
	 *   update table
	 *     set col1=?,col2=?,col3=?...coln=?
	 *   where id=?
	 *   ����:��һ��Ա���ϵ�ְ����ͬʱ��н
	 *   update ac01 
	 *       set aac111=aac111+?,aac112=? 
	 *     where aac101=?
	 * >
	 * @param sql
	 * @param stateList
	 * @param idlist
	 * @return
	 * @throws Exception
	 */
	protected final boolean batchUpdate(final String sql,final Object stateList[],Object...idlist)throws Exception
	{
		PreparedStatement pstm = null;
		try{
			pstm = DBUtils.prepareStatement(sql);
			//pstm.setObject(1, newState);
			int index = 1;
			for(Object state:stateList)
			{
				pstm.setObject(index++, state);
			}
			for(Object param: idlist)
			{
				pstm.setObject(index, param);
				pstm.addBatch();
			}
			return this.executeBatchTransaction(pstm);
		}
		finally
		{
			DBUtils.close(pstm);
		}
	}
	
	
	
	

	/**
	 * ��������ɾ������
	 * <
	 *    delete  from  table where id=?
	 * >
	 * @param sql      ---  sql���
	 * @param idlist   ---  �����б�
	 * @return
	 * @throws Exception
	 */
	protected final boolean batchUpdate(final String sql,final Object...idlist)throws Exception
	{
		PreparedStatement pstm = null;
		try{
			pstm = DBUtils.prepareStatement(sql);
			for(Object param:idlist)
			{
				pstm.setObject(1, param);
				pstm.addBatch();
			}
			return executeBatchTransaction(pstm);
			
		}
		finally
		{
			DBUtils.close(pstm);
		}
	}
	
	
	
	/**
	 * ��һ״̬������
	 * <
	 *    �ʺ�����SQL���
	 *    update table 
	 *       set col=?
	 *     where id=? 
	 * >
	 * @param sql      ---  sql���
	 * @param newState ---  ��һ�е�Ŀ��״̬
	 * @param idlist   ---  ��������
	 * @return
	 */
	protected final boolean batchUpdate(final String sql,final Object newState,
			                            final Object...idlist)throws Exception
	{
		PreparedStatement pstm = null;
		try {
			pstm = DBUtils.prepareStatement(sql);
			pstm.setObject(1, newState);
			for(Object param:idlist)
			{
				pstm.setObject(2, param);
				pstm.addBatch();
			}
			return executeBatchTransaction(pstm);
		} 
		finally
		{
			DBUtils.close(pstm);
		}
		
	}
	
	
	/**
	 * ��һ������������ִ�з���
	 * @param pstm
	 * @return
	 * @throws Exception
	 */
	private boolean executeBatchTransaction(PreparedStatement pstm)throws Exception
	{
		boolean tag = false;
		DBUtils.beginTransaction();
		try
		{
			pstm.executeBatch();
			DBUtils.commit();
			tag = true;
		}
		catch(Exception e)
		{
			DBUtils.rollback();
			e.printStackTrace();
		}
		finally
		{
			DBUtils.endTransection();
		}
		return tag;
	}
	
	
	
	
	
	
	
	
	
	
	
	
//==================================================================================================
  /**************************************************************
   * 	                       ����Ϊ��ѯ����
   **************************************************************/
	/**
	 * @param sql
	 * 				select aab102,aab103,aab104,aab105
	 * 				  from ab01
	 * 				 where true 
	 * 				   and aab102 like ?
	 * 				   and aab013 = ?
	 * 				   and ...
	 * @param args
	 * @return
	 * @throws Exception
	 */
	protected final List<Map<String,String>> queryForList(final String sql,Object...args)throws Exception
	{
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		try
		{
			pstm = DBUtils.prepareStatement(sql);
			
			if(args!= null)
			{
				int index = 1;
				for(Object element:args)
				{
					pstm.setObject(index++, element);
				}
			}
			
			
			rs = pstm.executeQuery();
			ResultSetMetaData rmd = rs.getMetaData();
			int column = rmd.getColumnCount();
			
			int initSize = ((int)(column/0.75)) +1;
			List<Map<String,String>> qlist = new ArrayList<>();
			
			Map<String,String> ins = null;
			while(rs.next())
			{
				ins = new HashMap<>(initSize);
				for(int i=1;i<=column;i++)
				{
					ins.put(rmd.getColumnLabel(i).toLowerCase(), rs.getString(i));
				}
				qlist.add(ins);
			}
			return qlist;
		}
		finally
		{
			DBUtils.close(rs);
			DBUtils.close(pstm);
		}
	}
	
	
	/**
	 * ��������ѯ
	 * @param sql
	 * @return
	 * @throws Exception
	 */
	protected final List<Map<String,String>> queryForList(final String sql)throws Exception
	{
//		//����JDBC�ӿڱ���
//		PreparedStatement pstm=null;
//		ResultSet rs=null;
//		try
//		{
//			//����SQL
//			pstm=DBUtils.prepareStatement(sql.toString());
//			//ִ��SQL
//			rs=pstm.executeQuery();
//			//��ȡ�������������
//			ResultSetMetaData rsmd=rs.getMetaData();
//			//�����ѯ������
//			int count=rsmd.getColumnCount();
//			//���㰲ȫ�ĳ�ʼ����
//			int initSize=((int)(count/0.75))+1;
//			
//			//����װ�ز�ѯ�����List��������
//			List<Map<String,String>> rows=new ArrayList<>();
//			//����װ�ص�ǰ�����ݵ�Map��������
//			Map<String,String> ins=null;
//			
//			//ѭ������rsָ��Ĺ���
//			while(rs.next())
//			{
//				//ʵ������ǰ����������
//				ins = new HashMap<>();
//				
//				//ѭ����ǰ��������
//				for(int i=1;i<=count;i++)
//				{
//					//�м�ӳ��
//					ins.put(rsmd.getColumnLabel(i).toLowerCase(), rs.getString(i));
//				}
//				//����ǰ�����ݷ���List
//				rows.add(ins);
//			}
//			return rows;
//		}
//		finally
//		{
//			DBUtils.close(rs);
//			DBUtils.close(pstm);
//		}
		return this.queryForList(sql, null);
	}
	
	
	/**
	 * ��һ�����ݸ���ͨ�÷���
	 * @param sql   --  ��Ҫִ�е�SQL���
	 * @param args  --  SQL���Ĳ�������
	 * @return
	 * @throws Exception
	 */
	protected final int executeUpdate(final String sql,final Object...args) throws Exception
	{

		PreparedStatement ps = null;
		try 
		{

			ps = DBUtils.prepareStatement(sql);
			int index = 1;
			for(Object element: args)
			{
				ps.setObject(index++, element);
			}
			return ps.executeUpdate();
			
		} finally
		{
			DBUtils.close(ps);

		}
		
	}
	
	
	
	
	protected final Map<String,String> executeSelectById(final String sql,final int Id) throws Exception
	{

		PreparedStatement pstm = null;
		ResultSet rs = null;
		try 
		{

			pstm = DBUtils.prepareStatement(sql);
			pstm.setObject(1, Id);
			rs = pstm.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int column = rsmd.getColumnCount();
			int initNumber = (int)(column/0.75)+1;
			Map<String,String> mp = new HashMap<>(initNumber);
			if(rs.next())
			{
				for(int i = 1;i<= column;i++)
				{
					mp.put(rsmd.getColumnLabel(i), rs.getString(i));
				}
			}
		
			return mp;
			
		} finally
		{
			DBUtils.close(rs);
			DBUtils.close(pstm);

		}
		
	}
	
	protected final Map<String,String> queryForMap(final String sql,final Object...args)throws Exception
	{
		
		PreparedStatement pstm = null;
		ResultSet rs = null;
		try
		{
			pstm = DBUtils.prepareStatement(sql);
			int index = 1;
			for(Object param:args)
			{
				pstm.setObject(index++,param);
			}
			rs = pstm.executeQuery();
			Map<String,String> map = null;
			if(rs.next())
			{
				ResultSetMetaData rmd = rs.getMetaData();
				int column = rmd.getColumnCount();
				int initSize = ((int)(column/0.75))+1;
				
				map = new HashMap<>(initSize);
				for(int i=1;i<=column;i++)
				{
					map.put(rmd.getColumnLabel(i).toLowerCase(), rs.getString(i));
				}
			}
			return map;
		}
		finally
		{
			DBUtils.close(rs);
			DBUtils.close(pstm);
		}
		
	}
}
