package com.remp.services.impl.ab;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

public class Ab02ServicesImpl extends JdbcServicesSupport
{

	/**
	 * 不定条件查询
	 */
	public List<Map<String, String>> query()throws Exception
	{
		//还原页面查询条件
		Object aab101 = this.get("aab101");
		
		//定义SQL
		StringBuilder sql = new StringBuilder()
				.append("select aab101,aab202,aab203,aab204,aab205,")
				.append("		aab206,aab207")
				.append("  from ab02")
				.append(" where aab101=?")
				;
		
		//参数列表
		List<Object> paramList = new ArrayList<>();
		//逐一判断查询条件是否录入
		if (this.isNotNull(aab101))
		{
			paramList.add(aab101);
		}
	
		return this.queryForList(sql.toString(), paramList.toArray());
	}
	
	/**
	 * 计划明细表批量修改
	 * @return
	 * @throws Exception
	 */
	public boolean updateDetailed() throws Exception
	{
		StringBuilder sql = new StringBuilder()
				.append("update ab02 a set a.aab203=?,a.aab204=?,a.aab205=?,a.aab206=?,a.aab207=?")
				.append(" where a.aab101=").append(this.get("aab101"))
				.append(" and a.aab202=?")
				;
		
		//获取页面数据列表
		String aab202List[] = this.getIdList("aab202List");
		String aab203List[] = this.getIdList("aab203List");
		String aab204List[] = this.getIdList("aab204List");
		String aab205List[] = this.getIdList("aab205List");
		String aab206List[] = this.getIdList("aab206List");
		String aab207List[] = this.getIdList("aab207List");
		
		String stateList[] = new String[6];
		boolean tag = false;
		for(int i = 0; i < 4; i++)
		{
			//生成StateList
			stateList[0] = aab203List[i];
			stateList[1] = aab204List[i];
			stateList[2] = aab205List[i];
			stateList[3] = aab206List[i];
			stateList[4] = aab207List[i];
			stateList[5] = aab202List[i];
			//执行更新
			tag = this.executeUpdate(sql.toString(), stateList)>0;
			
		}
		return tag;
	}

}
