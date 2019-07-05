package com.remp.system.db;

import java.sql.*;
import java.util.*;
import java.lang.ThreadLocal;
public class DBUtils 
{
	private static String driver = null;
	private static String url = null;
	private static String userName = null;
	private static String password = null;
	private static ThreadLocal<java.sql.Connection> threadLocal = new ThreadLocal<>();
	private DBUtils(){}
	
	static
	{
		ResourceBundle rb = ResourceBundle.getBundle("DBOptions");
		driver = rb.getString("DRIVER");
		url = rb.getString("URL");
		userName = rb.getString("USERNAME");
		password = rb.getString("PASSWORD");
		try 
		{
			Class.forName(driver);
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	
	
	private static Connection getConnection()throws Exception
	{
		Connection conn = threadLocal.get();
		if(conn == null || conn.isClosed())
		{
			conn = DriverManager.getConnection(url,userName,password);
			threadLocal.set(conn);
		}
		return conn;
	}
	
	public static PreparedStatement prepareStatement(final String sql)throws Exception
	{
		return DBUtils.getConnection().prepareStatement(sql);
	}
	
	
	//===============================事务处理===========================
	
	public static void beginTransaction()throws Exception
	{
		DBUtils.getConnection().setAutoCommit(false);
	}
	
	
	public static void commit()throws Exception
	{
		DBUtils.getConnection().commit();
	}
	
	public static void rollback() 
	{
		try {
			DBUtils.getConnection().rollback();
		}  catch (Exception e1) {
			
			try {
				DBUtils.getConnection().rollback();
			} catch (Exception e2) {
				e2.printStackTrace();
			}			
			e1.printStackTrace();
		}
	}
	
	public static void endTransection()
	{
		try {
			DBUtils.getConnection().setAutoCommit(true);
		}  catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	
	
	
	////====================关闭========================================
	
	
	public static void close(ResultSet rs)
	{
		try 
		{
			if(rs != null)
			{
				rs.close();
			}
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	public static void close(PreparedStatement ps)
	{
		try 
		{
			if(ps != null)
			{
				ps.close();
			}
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	public static void close()
	{
		Connection conn = threadLocal.get();
		try 
		{
			
			if(conn != null && !conn.isClosed())
			{
				threadLocal.remove();
				System.out.println("关闭数据库连接");
				conn.close();
			}
		} catch (Exception e) 
		{
			e.printStackTrace();
		}
	}
	
	
	
	
	
}
