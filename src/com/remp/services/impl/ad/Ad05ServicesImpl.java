package com.remp.services.impl.ad;

import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ad05ServicesImpl extends JdbcServicesSupport 
{
	/**
	 * �����ԤԼ��¼֮ǰ,��֤�ͻ��Ƿ��м�¼,��������ӿͻ���Ϣ
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
}
