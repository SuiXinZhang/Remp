package com.remp.services.impl.ad;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ad02ServicesImpl extends JdbcServicesSupport 
{
	/**
	 * 添加退号记录,并更改预约记录状态为作废
	 * @return
	 * @throws Exception
	 */
	public boolean addwithdrawOrder()throws Exception
	{
		StringBuilder sql1 = new StringBuilder()
				.append("insert into ad02(aad101,aad202,aad203)")
				.append("          values(?,?,?)");
		Object args[]={
				this.get("aad101"),
				this.get("aad202"),
				this.get("aad203")
		};
		String sql2 = "update ad01 set aad116='1' where aad101=?";
		this.executeUpdate(sql1.toString(), args);
		this.appendSql(sql2, this.get("aad101"));
		return this.executeTransaction();
	}

	/**
	 * 查询退号记录
	 */
	public List<Map<String, String>> query()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select a.aad101,a.aad102,a.aad103,a.aad104,a.aad105,")
				.append("       a.aad109,a.aad110,a.aad111,a.aad113,b.aad202,")
				.append("       b.aad203")
				.append("  from ad01 a,ad02 b")
				.append(" where b.aad101 = a.aad101")
				;
		return this.queryForList(sql.toString());
	}
}
