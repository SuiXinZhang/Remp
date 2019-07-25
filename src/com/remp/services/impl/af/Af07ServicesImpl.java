package com.remp.services.impl.af;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.MailTools;
import com.remp.system.tools.Tools;

public class Af07ServicesImpl extends JdbcServicesSupport 
{
	/**
	 * 添加欠款单
	 * @return
	 * @throws Exception
	 */
	public boolean add() throws Exception 
	{
		StringBuilder sql = new StringBuilder()
				.append("insert into af07(aaf702,aaf703,aaf704,aaf705,aaf706,aaf709,aaf710)")
				.append("	values(?,?,?,?,?,?,'01')")
				;
		Object args[] = {
				this.get("aaf702"),
				this.get("aaf703"),
				this.get("aaf704"),
				this.get("aaf705"),
				this.get("aaf706"),
				this.get("aaf709")
		};
		return this.executeUpdate(sql.toString(), args)>0;
	}
	
	
	@Override
	public List<Map<String, String>> query() throws Exception 
	{
		
		Object qaaf702 = this.get("qaaf702");
		Object qaaf703 = this.get("qaaf703");
		Object bdate = this.get("bdate");
		Object edate = this.get("edate");
		Object qaaf710 = this.get("qaaf710");
		
		
		StringBuilder sql = new StringBuilder()
				.append("select a.aaf701,a.aaf702,a.aaf703,a.aaf704,a.aaf705,a.aaf706,a.aaf709,b.fvalue cnaaf710")
				.append("  from af07 a,syscode b")
				.append(" where true")
				.append(" and b.fcode=a.aaf710 and b.fname='aaf710'")
				;
		
		List<Object> paramList = new ArrayList<>();
		
		if (isNotNull(qaaf702)) 
		{
			sql.append(" and aaf702=?");
			paramList.add(qaaf702);
		}
		if (isNotNull(qaaf703))
		{
			sql.append(" and aaf703 like ?");
			paramList.add("%"+qaaf703+"%");
		}
		if (isNotNull(bdate)) 
		{
			sql.append(" and aaf705>?");
			paramList.add(bdate);
		}
		if (isNotNull(edate))
		{
			sql.append(" and aaf705<?");
			paramList.add(edate);
		}
		if (isNotNull(qaaf710)) 
		{
			sql.append(" and aaf710=?");
			paramList.add(qaaf710);
		}
		
		return queryForList(sql.toString(), paramList.toArray());
	}
	
	public boolean sendEmail() throws Exception
	{
		//设置邮件主题及内容
		Object objectContent[] = {
			"催款提醒",
			"欠债还钱         --思安地产"
		};
		
		//获取收件对象
		String emailList[] = this.getIdList("emailList");
		
		
		try
		{
			MailTools.setMimeMessage(objectContent, emailList);
			MailTools.send();
		} 
		catch (Exception e) 
		{
			System.out.println(e);
			return false;
		}
		
		return true;
	}
	
	public boolean modifyState() throws Exception
	{
		String sql = "update af07 set aaf710='02' where aaf701=?";
		System.out.println(this.get("aaf701"));
		return this.executeUpdate(sql, this.get("aaf701"))>0;
	}
}
