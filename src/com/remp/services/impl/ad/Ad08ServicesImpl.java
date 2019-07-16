package com.remp.services.impl.ad;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ad08ServicesImpl extends JdbcServicesSupport 
{
	public boolean addsalesLog()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into ad08(aad802,aad803,aad804,aad805,aad806,")
				.append("                 aad807,aad808,aad809,aad810,aad811,")
				.append("                 aad812,aad813,aad814,aad815)")
				.append("           values(?,?,?,?,?,")
				.append("                  ?,?,?,?,?,")
				.append("                  ?,?,?,current_date)")
				;
		Object args[] = {
				this.get("aad802"),
				this.get("aad803"),
				this.get("aad804"),
				this.get("aad805"),
				this.get("aad806"),
				this.get("aad807"),
				this.get("aad808"),
				this.get("aad809"),
				this.get("aad810"),
				this.get("aad811"),
				this.get("aad812"),
				this.get("aad813"),
				this.get("aad814")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}

	public List<Map<String, String>> query()throws Exception
	{
		Object qaad815 = this.get("qaad815");
		StringBuilder sql = new StringBuilder()
				.append("select aad801,aad802,aad803,aad804,aad805,")
				.append("       aad806,aad807,aad808,aad809,aad810,")
				.append("       aad811,aad812,aad813,aad814,aad815")
				.append(" from ad08");
		List<Object> paramList = new ArrayList<>();
		if(this.isNotNull(qaad815))
		{
			sql.append(" where aad815=?");
			paramList.add(qaad815);
		}
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	public Map<String, String> findById()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("select aad801,aad802,aad803,aad804,aad805,")
				.append("       aad806,aad807,aad808,aad809,aad810,")
				.append("       aad811,aad812,aad813,aad814,aad815")
				.append("  from ad08")
				.append(" where aad801=?")
				;
		return this.queryForMap(sql.toString(), this.get("aad801"));
	}
	public boolean modifysalesLog()throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ad08 ")
				.append("   set aad802=?,aad803=?,aad804=?,aad805=?,aad806=?,")
				.append("       aad807=?,aad808=?,aad809=?,aad810=?,aad811=?,")
				.append("       aad812=?,aad813=?,aad814=?")
				.append(" where aad801=?")
				;
		Object args[] = {
				this.get("aad802"),
				this.get("aad803"),
				this.get("aad804"),
				this.get("aad805"),
				this.get("aad806"),
				this.get("aad807"),
				this.get("aad808"),
				this.get("aad809"),
				this.get("aad810"),
				this.get("aad811"),
				this.get("aad812"),
				this.get("aad813"),
				this.get("aad814"),
				this.get("aad801")
		};
		return this.executeUpdate(sql.toString(), args)>0;	
	}
}
