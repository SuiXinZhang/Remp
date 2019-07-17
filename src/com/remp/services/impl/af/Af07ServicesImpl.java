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
				.append("insert into af07(aaf702,aaf703,aaf704,aaf705,aaf706,aaf709)")
				.append("	values(?,?,?,?,?,?)")
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
		
		
		StringBuilder sql = new StringBuilder()
				.append("select aaf702,aaf703,aaf704,aaf705,aaf706,aaf709")
				.append("  from af07")
				.append(" where true")
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
		
		return queryForList(sql.toString(), paramList.toArray());
	}
	
	public boolean sendEmail() throws Exception
	{
		//设置邮件主题及内容
		Object objectContent[] = {
			"催款提醒",
			"欠债还钱         --思安地产"
		};
		
		String idlist[] = this.getIdList("aaf701");
		String sql = "select aaf704 from af07 where aaf701=?";
		List<Object> recipientAddress = new ArrayList<>();
		for(String param:idlist)
		{
			this.queryForMap(sql, param);
			recipientAddress.add(param);
		}
		
		
		//获取收件对象
//		String emailList[] = this.getIdList("emailList");
//	
//		List<Object> recipientAddress = new ArrayList<>();
//		
//		for(String param:emailList)
//		{
//			recipientAddress.add(param);
//		}
		
		MailTools.setMimeMessage(objectContent, recipientAddress);
		
		return true;
	}
}
