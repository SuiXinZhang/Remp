package com.remp.services.impl.ad;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

public class Ad01ServicesImpl extends JdbcServicesSupport 
{
	/**
	 * 查询预约记录
	 */
	public List<Map<String, String>> query()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select a.aad101,a.aad102,a.aad103,a.aad104,a.aad105,")
				.append("       a.aad109,a.aad110,a.aad111,a.aad113,a.aad115,")
				.append("       s.fvalue saad116")			
				.append("  from ad01 a,syscode s")
				.append(" where a.aad116=s.fcode and s.fname='aad116'")
				;
		return this.queryForList(sql.toString());
	}
	/**
	 * 添加预约记录,其中所有排号都自动生成
	 * @return
	 * @throws Exception
	 */
	public boolean addOrder()throws Exception
	{
		String aad108 = Tools.getOrderNum("aad108");
		this.put("oaad108", aad108);
		String aad104 = Tools.getOrderNum("aad104");
		this.put("oaad104", aad104);
		String aad107 = Tools.getOrderNum("aad107");
		this.put("oaad107", aad107);
		StringBuilder sql = new StringBuilder()
				.append("insert into ad01(aad102,aad103,aad104,aad105,aad106,")
				.append("                 aad107,aad108,aad109,aad110,aad111,")
				.append("                 aad112,aad113,aad114,aad115,aaa201,")
				.append("                 aad116,aac401)")
				.append("          values(?,?,?,?,?,")
				.append("                 ?,?,?,?,?,")
				.append("                 ?,?,?,?,1,")
				.append("                 0,?)")
				;
		Object args[]={
				this.get("oaad102"),
				this.get("oaad103"),
				aad104,
				this.get("oaad105"),
				this.get("oaad106"),
				aad107,
				aad108,
				this.get("oaad109"),
				this.get("oaad110"),
				this.get("oaad111"),
				this.get("oaad112"),
				this.get("oaad113"),
				this.get("oaad114"),
				this.get("oaad115"),
				this.get("oaac401")
		};
		System.out.println(args[0]);
		return this.executeUpdate(sql.toString(), args)>0;
	}
	/**
	 * 在添加预约记录之前,验证客户是否有记录,若无则添加客户信息
	 * @return
	 * @throws Exception
	 */
	public Map<String, String> findByName()throws Exception
	{
		String sql = "select aac401,aac403,aac407 from ac04 where aac403=? and aac407=?";
		Object args[] ={
				this.get("caac403"),
				this.get("caac407")
		};
		return this.queryForMap(sql, args);
	}

	/**
	 * 查看客户预约记录
	 */
	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql= new StringBuilder()
				.append("select aad102,aad103,aad104,aad105,aad106,")
				.append("       aad107,aad108,aad109,aad110,aad111,")
				.append("       aad112,aad113,aad114,aad115")
				.append("  from ad01")
				.append(" where aad101=?")
				;
		return this.queryForMap(sql.toString(), this.get("aad101"));
	}
	/**
	 * 删除预约记录
	 * @return
	 * @throws Exception
	 */
	public boolean deleteById()throws Exception
	{
		String sql = "delete from ad01 where aad101=?";
		return this.executeUpdate(sql, this.get("aad101"))>0;
	}
	/**
	 * 修改预约记录
	 * @return
	 * @throws Exception
	 */
	public boolean modifyOrder()throws Exception
    {
    	StringBuilder sql=new StringBuilder()
    			.append("update ad01 a")
    			.append("   set a.aad102=?,a.aad103=?,a.aad104=?,a.aad105=?,a.aad106=?,")
    			.append("       a.aad107=?,a.aad108=?,a.aad109=?,a.aad110=?,a.aad111=?,")
    			.append("       a.aad112=?,a.aad113=?,a.aad114=?,a.aad115=?")
    			.append(" where a.aad101=?")
    			;
    	Object args[]={
    			this.get("oaad102"),
    			this.get("oaad103"),
    			this.get("oaad104"),
    			this.get("oaad105"),
    			this.get("oaad106"),
    			this.get("oaad107"),
    			this.get("oaad108"),
    			this.get("oaad109"),
    			this.get("oaad110"),
    			this.get("oaad111"),
    			this.get("oaad112"),
    			this.get("oaad113"),
    			this.get("oaad114"),
    			this.get("oaad115"),
    			this.get("aad101")
    	};
    	return this.executeUpdate(sql.toString(), args)>0;
    }
}
