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
	 * 	                       以下为属性定义
	 **************************************************************/
	//语句列表
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
	 * 	                       辅助方法
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
	    * 	                       以下为多表级联与混合事务的实现方式
	    **************************************************************/
		
	/**
	 * 执行事务
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
	 * 数据批量删除方法
	 * <
	 *    delete  from  table where id=?
	 * >
	 * @param sql      ---  sql语句
	 * @param idlist   ---  主键列表
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
	 * 多状态修改
	 * <
	 *   update table
	 *     set col1=?,col2=?,col3=?...coln=?
	 *   where id=?
	 *   例如:给一批员工上调职级并同时加薪
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
	 * 单一状态批处理
	 * <
	 *    适合如下SQL语句
	 *    update table 
	 *       set col=?
	 *     where id=? 
	 * >
	 * @param sql      ---  sql语句
	 * @param newState ---  单一列的目标状态
	 * @param idlist   ---  主键数组
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
	 * 向语句列表,注册SQL语句
	 * @param pstm
	 */
	private void regPstmObject(PreparedStatement pstm)
	{
		PstmMetaData pmd = new PstmMetaData(pstm, true);
		pmdList.add(pmd);
	}
	
	/**
	 * 为事务添加非批处理SQL语句
	 * <
	 *   delete from table where id=?
	 *   update table set col1=? where id=?
	 *   update table set col1=?,col2=?,col3=?.... where id=?
	 * >
	 * @param sql      ----  执行的SQL语句
	 * @param args     ----  参数列表
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
	    *  以下为单一表事务更新方法
	    **************************************************************/
		
	/**
 		 * 多状态修改
	 * <
	 *   update table
	 *     set col1=?,col2=?,col3=?...coln=?
	 *   where id=?
	 *   例如:给一批员工上调职级并同时加薪
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
	 * 数据批量删除方法
	 * <
	 *    delete  from  table where id=?
	 * >
	 * @param sql      ---  sql语句
	 * @param idlist   ---  主键列表
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
	 * 单一状态批处理
	 * <
	 *    适合如下SQL语句
	 *    update table 
	 *       set col=?
	 *     where id=? 
	 * >
	 * @param sql      ---  sql语句
	 * @param newState ---  单一列的目标状态
	 * @param idlist   ---  主键数组
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
	 * 单一表批处理事务执行方法
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
   * 	                       以下为查询方法
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
	 * 无条件查询
	 * @param sql
	 * @return
	 * @throws Exception
	 */
	protected final List<Map<String,String>> queryForList(final String sql)throws Exception
	{
//		//定义JDBC接口变量
//		PreparedStatement pstm=null;
//		ResultSet rs=null;
//		try
//		{
//			//编译SQL
//			pstm=DBUtils.prepareStatement(sql.toString());
//			//执行SQL
//			rs=pstm.executeQuery();
//			//获取结果集描述对象
//			ResultSetMetaData rsmd=rs.getMetaData();
//			//计算查询的列数
//			int count=rsmd.getColumnCount();
//			//计算安全的初始容量
//			int initSize=((int)(count/0.75))+1;
//			
//			//定义装载查询结果的List容器对象
//			List<Map<String,String>> rows=new ArrayList<>();
//			//定义装载当前行数据的Map容器变量
//			Map<String,String> ins=null;
//			
//			//循环控制rs指针的滚动
//			while(rs.next())
//			{
//				//实例化当前行数据容器
//				ins = new HashMap<>();
//				
//				//循环当前行所有列
//				for(int i=1;i<=count;i++)
//				{
//					//列级映射
//					ins.put(rsmd.getColumnLabel(i).toLowerCase(), rs.getString(i));
//				}
//				//将当前行数据放入List
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
	 * 单一表数据更新通用方法
	 * @param sql   --  需要执行的SQL语句
	 * @param args  --  SQL语句的参数数组
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
