package com.remp.system.tools;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;

import com.remp.system.db.DBUtils;


public class Tools {

	private Tools() {
	}
	
	public static void main(String[] args) {
		String a = "abc";
		Tools.joinArray(a);
	}
	
	/**
	 * 获取员工流水号
	 * @return  String number="yyyy"+4位流水码
	 * @throws Exception
	 */
	public static String getEmpNumber()throws Exception
	{
		return Tools.getCurrentYear()+Tools.getFormatNumber("E");
	}
	
	private static final String baseCode1="0000";
	
	/**
	 * 获取格式化的尾码
	 * @param firstName
	 * @return
	 * @throws Exception
	 */
	private static String getFormatNumber(String firstName)throws Exception
	{
		int lastNumber = Tools.getNumnberForYear(firstName);
		int size = String.valueOf(lastNumber).length();
		
		return baseCode1.substring(size) + lastNumber;
	}
	
	/**
	 * 获取员工编号的尾码
	 * @param firstName
	 * @return
	 * @throws Exception
	 */
	private static int getNumnberForYear(String firstName)throws Exception
	{
		PreparedStatement pstm1 = null;
		PreparedStatement pstm2 = null;
		ResultSet rs = null;
		
		try
		{
			String sql1 = "select pkvalue from sequence where pkname = ? and DATE_FORMAT(sdate,'%Y') = DATE_FORMAT(CURRENT_DATE,'%Y')";
			pstm1 = DBUtils.prepareStatement(sql1);
			pstm1.setObject(1, firstName);
			rs = pstm1.executeQuery();
			
			int currentValue = 0;
			
			StringBuilder sql2 = new StringBuilder();
			if(rs.next())
			{
				currentValue = rs.getInt(1);
				sql2.append("update sequence set pkvalue = ? where pkname = ? and DATE_FORMAT(sdate,'%Y') = DATE_FORMAT(CURRENT_DATE,'%Y')");
			}
			else
			{
				sql2.append("insert into sequence(pkvalue,pkname,sdate) values (?,?,CURRENT_DATE)");
			}
			pstm2 = DBUtils.prepareStatement(sql2.toString());
			pstm2.setObject(1, ++currentValue);
			pstm2.setObject(2,firstName);
			pstm2.executeUpdate();
			return currentValue;
		}
		finally
		{
			DBUtils.close(rs);
			DBUtils.close(pstm1);
			DBUtils.close(pstm2);
		}
		
	}
	
	
	/**
	 * 获取年码
	 * @return
	 */
	private static String  getCurrentYear()
	{
		return new SimpleDateFormat("yyyy").format(new java.util.Date()).toString();
	}

	/**********************************************************
	 * 将数组连接成字符串
	 * @param element
	 * @return
	 */
	public static String joinArray(Object element)
	{
		if(element== null || element.equals(""))
		{
			return "";
		}
		
		if(element instanceof java.lang.String)
		{
			//System.out.println("111");
			return element.toString();
			
		}
		else
		{
			String str[] = (String[])element;
			
			StringBuilder strB = new StringBuilder(str[0]);
			for(int i=1; i<str.length;i++)
			{
				strB.append(",").append(str[i]);
			}
			return strB.toString();
			
		}
		
		
		
	}

	/**
	 * 创建DTO
	 * @param request
	 * @return
	 */
	public static Map<String,Object> createDto(HttpServletRequest request)
	{
		Map<String,String[]> requestMap = request.getParameterMap();
		
		int initSize = ((int)(requestMap.size()/0.75))+1;
		
		Set<Map.Entry<String,String[]>> set = requestMap.entrySet();
		Map<String,Object> dto = new HashMap<>(initSize);
		
		String tmp[] = null;
		for(Entry<String, String[]> entry:set)
		{
			tmp = entry.getValue();
			
			if(tmp.length ==1)
			{
				if(tmp[0] != null && !tmp[0].equals("")){
					dto.put(entry.getKey(), tmp[0]);
				}
			}else
			{
				dto.put(entry.getKey(), tmp);
			}
		}
		return dto;
	}
	
	/**
	 * 获得主键值
	 * @param pkname
	 * @return
	 * @throws Exception
	 */
	public static int getSequence(String pkname) throws Exception
	{
		PreparedStatement pstm1 = null;
		PreparedStatement pstm2 = null;
		ResultSet rs = null;
		try
		{
			String sql1 = "select pkvalue from sequence where pkname = ?";
			pstm1 = DBUtils.prepareStatement(sql1);
			pstm1.setObject(1,pkname);
			rs = pstm1.executeQuery();
			int currentVal = 0;
			if(rs.next())
			{
				currentVal = rs.getInt(1);
				String sql2 = "update sequence set pkvalue = ? where pkname = ?";
				pstm2 = DBUtils.prepareStatement(sql2);
				pstm2.setObject(1, ++currentVal);
				pstm2.setObject(2,pkname);
				pstm2.executeUpdate();
			}
			else
			{
				String sql2 = "insert into sequence(pkname,pkvalue) values (?,?)";
				pstm2 = DBUtils.prepareStatement(sql2);
				pstm2.setObject(1, pkname);
				pstm2.setObject(2, ++currentVal);
				pstm2.executeUpdate();
			}
			return currentVal;
			
		}
		finally
		{
			DBUtils.close(rs);
			DBUtils.close(pstm1);
			DBUtils.close(pstm2);
		}
		
		
	}
	
	/**
	 * 获取房间排号,项目排号以及实际排号
	 * @param key
	 * @return
	 * @throws Exception
	 */
	public static String getOrderNum(String key)throws Exception
	{
		int lastNumber = Tools.getNumberForOrder(key);
		int size = String.valueOf(lastNumber).length();
		
		return baseCode1.substring(size)+lastNumber;
	}
	
	/**
	 * 获取预约排号
	 * @param key
	 * @return
	 * @throws Exception
	 */
	public static int getNumberForOrder(String key)throws Exception
	{
		PreparedStatement pstm1 = null;
		PreparedStatement pstm2 = null;
		ResultSet rs = null;
		try 
		{
			String sql1 = "select a.pkvalue from sequence a where pkname=?";
			pstm1 = DBUtils.prepareStatement(sql1);
			pstm1.setObject(1, key);
			rs = pstm1.executeQuery();
			int currentVal=0;
			StringBuilder sql2 = new StringBuilder();
			if(rs.next())
			{
				currentVal=rs.getInt(1);
				sql2.append("update sequence")
				    .append("   set pkvalue=?")
				    .append(" where date_format(sdate,'%Y')=date_format(current_date,'%Y')")
				    .append("   and pkname=?");
			}
			else 
			{
				sql2.append("insert into sequence(pkvalue,pkname,sdate)")
				    .append("              values(?,?,current_date)");
			}
			pstm2 = DBUtils.prepareStatement(sql2.toString());
			pstm2.setObject(1, ++currentVal);
			pstm2.setObject(2, key);
			pstm2.executeUpdate();
			return currentVal;
		}
		finally 
		{
			rs.close();
			pstm1.close();
			pstm2.close();
		}
		
	}
}
