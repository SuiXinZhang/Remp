package com.remp.services.impl.af;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.poi.hpsf.Array;

import com.remp.services.JdbcServicesSupport;

public class Af02ServicesImpl extends JdbcServicesSupport {
	
	private boolean receiveNote() throws Exception
	{
		Object aaf201 = this.get("aaf201");
		Object aaf202 = this.get("aaf202");
		Object laaf203 = this.get("aaf203");
		Object laaf204 = this.get("aaf204");
		Object aaf205 = this.get("aaf205");
		Object aaf206 = this.get("aaf206");
		
		
		Map<String,String> map = this.getStartEnd(aaf201);
		int oaaf203 = Integer.parseInt(map.get("aaf203"));
		int oaaf204 = Integer.parseInt(map.get("aaf204"));
		int aaf203 = Integer.parseInt(laaf203.toString());
		int aaf204 = Integer.parseInt(laaf204.toString());
		
		this.delOriRecord(aaf201);
		if(oaaf203 == aaf203)
		{
			if(oaaf204 == aaf204)
			{
				StringBuilder sql1 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207)")
						.append("          values(?,?,?,?,?,'2')");
				Object[] args1 = { aaf202,aaf203,aaf204,aaf205,aaf206 };
				this.appendSql(sql1.toString(), args1);
			}
			else if(oaaf204 > aaf204)
			{
				StringBuilder sql2 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207)")
						.append("          values(?,?,?,?,?,'2')");
				Object[] args2 = { aaf202,oaaf203,aaf204,aaf205,aaf206 };
				this.appendSql(sql2.toString(), args2);
				
				StringBuilder sql3 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf207)")
						.append("          values(?,?,?,'1')");
				Object[] args3 = { aaf202,(aaf204+1),oaaf204 };
				this.appendSql(sql3.toString(), args3);
			}
		}
		else if(oaaf203 < aaf203)
		{
			if(oaaf204 == aaf204)
			{
				StringBuilder sql4 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf207)")
						.append("          values(?,?,?,'1')");
				Object[] args4 = { aaf202,oaaf203,(aaf203-1) };
				this.appendSql(sql4.toString(), args4);
				
				StringBuilder sql5 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207)")
						.append("          values(?,?,?,?,?,'2')");
				Object[] args5 = { aaf202,aaf203,aaf204,aaf205,aaf206 };
				this.appendSql(sql5.toString(), args5);
			}
			else if(oaaf204 > aaf204)
			{
				StringBuilder sql6 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf207)")
						.append("          values(?,?,?,'1')");
				Object[] args6 = { aaf202,oaaf203,(aaf203-1) };
				this.appendSql(sql6.toString(), args6);
				
				StringBuilder sql7 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207)")
						.append("          values(?,?,?,?,?,'2')");
				Object[] args7 = { aaf202,aaf203,aaf204,aaf205,aaf206 };
				this.appendSql(sql7.toString(), args7);
				
				StringBuilder sql8 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf207)")
						.append("          values(?,?,?,'1')");
				Object[] args8 = { aaf202,(aaf204+1),oaaf204 };
				this.appendSql(sql8.toString(), args8);
			}
		}
	
		return this.executeTransaction();
	}
	
	
	
	/**
	 * 票据核销
	 * @return
	 * @throws Exception
	 */
	private boolean writeOffNote() throws Exception
	{
		Object aaf201 = this.get("aaf201");
		Object aaf202 = this.get("aaf202");
		Object laaf203 = this.get("aaf203");
		Object laaf204 = this.get("aaf204");
		Object aaf205 = this.get("aaf205");
		Object aaf206 = this.get("aaf206");
		Object aaf209 = this.get("aaf209");
		Object aaf210 = this.get("aaf210");
		Object aaf211 = this.get("aaf211");
		Object aaf213 = this.get("aaf213");
		Object aaf214 = this.get("aaf214");
		
		
		Map<String,String> map = this.getStartEnd(aaf201);
		int oaaf203 = Integer.parseInt(map.get("aaf203"));
		int oaaf204 = Integer.parseInt(map.get("aaf204"));
		int aaf203 = Integer.parseInt(laaf203.toString());
		int aaf204 = Integer.parseInt(laaf204.toString());
	
		
		this.delOriRecord(aaf201);
		if(oaaf203 == aaf203)
		{
			if(oaaf204 == aaf204)
			{
				StringBuilder sql1 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207,")
						.append("                 aaf209,aaf210,aaf211,aaf213,aaf214)")
						.append("          values(?,?,?,?,?,'3',?,?,?,?,?)");
				Object[] args1 = { aaf202,aaf203,aaf204,aaf205,aaf206,aaf209,aaf210,aaf211,aaf213,aaf214 };
				this.appendSql(sql1.toString(), args1);
			}
			else if(oaaf204 > aaf204)
			{
				StringBuilder sql2 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207,")
						.append("                 aaf209,aaf210,aaf211,aaf213,aaf214)")
						.append("          values(?,?,?,?,?,'3',?,?,?,?,?)");
				Object[] args2 ={ aaf202,aaf203,aaf204,aaf205,aaf206,aaf209,aaf210,aaf211,aaf213,aaf214 };
				this.appendSql(sql2.toString(), args2);
				
				StringBuilder sql3 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207)")
						.append("          values(?,?,?,?,?,'2')");
				Object[] args3 ={ aaf202,(aaf204+1),oaaf204,aaf205,aaf206 };
				this.appendSql(sql3.toString(), args3);
			}
		}
		else if(oaaf203 < aaf203)
		{
			if(oaaf204 == aaf204)
			{
				StringBuilder sql4 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207)")
						.append("          values(?,?,?,?,?,'2')");
				Object[] args4 ={ aaf202,oaaf203,(aaf203-1),aaf205,aaf206 };
				this.appendSql(sql4.toString(), args4);
				
				StringBuilder sql5 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207,")
						.append("                 aaf209,aaf210,aaf211,aaf213,aaf214)")
						.append("          values(?,?,?,?,?,'3',?,?,?,?,?)");
				Object[] args5 ={ aaf202,aaf203,aaf204,aaf205,aaf206,aaf209,aaf210,aaf211,aaf213,aaf214 };
				this.appendSql(sql5.toString(), args5);
			}
			else if(oaaf204 > aaf204)
			{
				StringBuilder sql6 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207)")
						.append("          values(?,?,?,?,?,'2')");
				Object[] args6 = { aaf202,oaaf203,(aaf203-1),aaf205,aaf206 };
				this.appendSql(sql6.toString(), args6);
				
				StringBuilder sql7 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207,")
						.append("                 aaf209,aaf210,aaf211,aaf213,aaf214)")
						.append("          values(?,?,?,?,?,'3',?,?,?,?,?)");
				Object[] args7 ={ aaf202,aaf203,aaf204,aaf205,aaf206,aaf209,aaf210,aaf211,aaf213,aaf214 };
				this.appendSql(sql7.toString(), args7);
				
				StringBuilder sql8 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207)")
						.append("          values(?,?,?,?,?,'2')");
				Object[] args8 ={ aaf202,(aaf204+1),oaaf204,aaf205,aaf206 };
				this.appendSql(sql8.toString(), args8);
			}
		}
	
		return this.executeTransaction();
	}
	
	/**
	 * 票据废弃
	 * @return
	 * @throws Exception
	 */
	private boolean discardNote() throws Exception
	{
		Object aaf201 = this.get("aaf201");
		Object aaf202 = this.get("aaf202");
		Object laaf203 = this.get("aaf203");
		Object laaf204 = this.get("aaf204");
		Object aaf205 = this.get("aaf205");
		Object aaf206 = this.get("aaf206");
		Object aaf208 = this.get("aaf208");
		Object aaf212 = this.get("aaf212");
		
		
		Map<String,String> map = this.getStartEnd(aaf201);
		int oaaf203 = Integer.parseInt(map.get("aaf203"));
		int oaaf204 = Integer.parseInt(map.get("aaf204"));
		int aaf203 = Integer.parseInt(laaf203.toString());
		int aaf204 = Integer.parseInt(laaf204.toString());
		
		
		this.delOriRecord(aaf201);
		if(oaaf203 == aaf203)
		{
			if(oaaf204 == aaf204)
			{
				StringBuilder sql1 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,")
						.append("                 aaf207,aaf208,aaf212)")
						.append("          values(?,?,?,?,?,'4',?,?)");
				Object[] args1 = { aaf202,aaf203,aaf204,aaf205,aaf206,aaf208,aaf212 };
				this.appendSql(sql1.toString(), args1);
			}
			else if(oaaf204 > aaf204)
			{
				StringBuilder sql2 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,")
						.append("                 aaf207,aaf208,aaf212)")
						.append("          values(?,?,?,?,?,'4',?,?)");
				Object[] args2 ={ aaf202,aaf203,aaf204,aaf205,aaf206,aaf208,aaf212 };
				this.appendSql(sql2.toString(), args2);
				
				StringBuilder sql3 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207)")
						.append("          values(?,?,?,?,?,'2')");
				Object[] args3 ={ aaf202,(aaf204+1),oaaf204,aaf205,aaf206 };
				this.appendSql(sql3.toString(), args3);
			}
		}
		else if(oaaf203 < aaf203)
		{
			if(oaaf204 == aaf204)
			{
				StringBuilder sql4 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207)")
						.append("          values(?,?,?,?,?,'2')");
				Object[] args4 ={ aaf202,oaaf203,(aaf203-1),aaf205,aaf206 };
				this.appendSql(sql4.toString(), args4);
				
				StringBuilder sql5 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,")
						.append("                 aaf207,aaf208,aaf212)")
						.append("          values(?,?,?,?,?,'4',?,?)");
				Object[] args5 ={ aaf202,aaf203,aaf204,aaf205,aaf206,aaf208,aaf212 };
				this.appendSql(sql5.toString(), args5);
			}
			else if(oaaf204 > aaf204)
			{
				StringBuilder sql6 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207)")
						.append("          values(?,?,?,?,?,'2')");
				Object[] args6 = { aaf202,oaaf203,(aaf203-1),aaf205,aaf206 };
				this.appendSql(sql6.toString(), args6);
				
				StringBuilder sql7 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,")
						.append("                 aaf207,aaf208,aaf212)")
						.append("          values(?,?,?,?,?,'4',?,?)");
				Object[] args7 ={ aaf202,aaf203,aaf204,aaf205,aaf206,aaf208,aaf212 };
				this.appendSql(sql7.toString(), args7);
				
				StringBuilder sql8 = new StringBuilder()
						.append("insert into af02(aaf202,aaf203,aaf204,aaf205,aaf206,aaf207)")
						.append("          values(?,?,?,?,?,'2')");
				Object[] args8 ={ aaf202,(aaf204+1),oaaf204,aaf205,aaf206 };
				this.appendSql(sql8.toString(), args8);
			}
		}
	
		return this.executeTransaction();
	}
	
	/**
	 * 插入前先删除原编号记录
	 * @param aaf201
	 * @throws Exception
	 */
	private void delOriRecord(Object aaf201)throws Exception
	{
		String sql = "delete from af02 where aaf201 = ?";
		Object args = aaf201;
		this.appendSql(sql, args);
	}
	
	
	
	/**
	 * 通过主键获得之前记录的起始编号和结束编号
	 * @param aaf201
	 * @return
	 * @throws Exception
	 */
	private Map<String,String> getStartEnd(Object aaf201) throws Exception
	{
		String sql = "select aaf203,aaf204 from af02 where aaf201 = ?";
		Object args = aaf201;
		return this.queryForMap(sql, args);
	}

	@Override
	public List<Map<String, String>> query() throws Exception 
	{
		Object aaf207 = this.get("qaaf207");
		StringBuilder sql = new StringBuilder()
				.append("select aaf201,aaf202,aaf203,aaf204,aaf205,")
				.append("       aaf206,b.fvalue as cnaaf207,aaf209,aaf210,aaf211")
				.append("  from af02 a,syscode b")
				.append(" where a.aaf207 = b.fcode and b.fname = 'aaf207' ");
		List<Object> args = new ArrayList<>();
		if(isNotNull(aaf207))
		{
			sql.append(" and aaf207 = ?");
			args.add(aaf207);
		}
		
		return this.queryForList(sql.toString(), args.toArray());
	}
}
