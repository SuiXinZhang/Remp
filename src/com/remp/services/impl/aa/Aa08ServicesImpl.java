package com.remp.services.impl.aa;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;

/**
 * 房间信息表（单一实例查询，批量不定条件查询，删除单一实例，批量删除，修改单一实例，批量修改）
 * @author Phoenix
 *
 */
public class Aa08ServicesImpl extends JdbcServicesSupport {
	/**
	 * 用于查询当前房间的基本信息
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa801,a.aaa802,a.aaa803,a.aaa804,a.aaa805,s1.fvalue cnaaa805,")
				.append("       a.aaa806,a.aaa807,a.aaa808,a.aaa809,a.aaa810,")
				.append("       a.aaa811,a.aaa812")
    			.append("  from aa08 a,syscode s1")
    			.append(" where a.aaa801=? and a.aaa805 = s1.fcode and s1.fname = 'aaa805'")
    			;
	    Map<String,String> m = this.queryForMap(sql.toString(), this.get("aaa801"));
	    
	    //获取所有的户型类型用于用户修改
		String sql2 = "select aaa502 from aa05";
		List<Map<String,String>> l =this.queryForList(sql2);
		StringBuilder aaa502 = new StringBuilder(); 
		for(Map<String,String> tem:l) {
			aaa502.append(tem.get("aaa502")+":"+tem.get("aaa502")+",");
		}
		//去掉最后一个逗号
		int a = aaa502.lastIndexOf(",");
		aaa502.delete(a, a);
		
		//将户型类型添加到m中
		m.put("aaa502", aaa502.toString());
		
		return m;
		
	}
	
	/**
	 * 查询aa05的户型
	 * @return
	 * @throws Exception
	 */
	public Map<String,String> queryAa05ForSelect()throws Exception
	{
		Map<String,String> m = new HashMap<String,String>();
		
	    //获取所有的户型类型用于用户修改
		String sql2 = "select aaa502 from aa05";
		List<Map<String,String>> l =this.queryForList(sql2);
		StringBuilder aaa502 = new StringBuilder(); 
		for(Map<String,String> tem:l) {
			aaa502.append(tem.get("aaa502")+":"+tem.get("aaa502")+",");
		}
		//去掉最后一个逗号
		int a = aaa502.lastIndexOf(",");
		aaa502.delete(a, a);
		
		//将户型类型添加到m中
		m.put("aaa502", aaa502.toString());
		return m;
	}
	
	/**
	 * 批量不定条件查询房间
	 */
	public List<Map<String,String>> query()throws Exception
	{
		//获取页面传递的dto,将其还原为查询条件参数
		Object aaa802 = this.get("qaaa802");  //房间编码
		Object aaa803 = this.get("qaaa803");  //房间号（模糊查询）
		Object aaa804 = this.get("qaaa804");  //地址（模糊查询）
		Object aaa805 = this.get("qaaa805");  //状态
		Object aaa806 = this.get("qaaa806"); //租售类型
		Object aaa807 = this.get("qaaa807"); //户型编码
		Object baaa808 = this.get("baaa808"); //建筑单价下限
		Object eaaa808 = this.get("eaaa808"); //建筑单价上限
		Object baaa809 = this.get("baaa809"); //建筑总价下限
		Object eaaa809 = this.get("eaaa809"); //建筑总价上限
		Object baaa810 = this.get("baaa810"); //套内单价下限
		Object eaaa810 = this.get("eaaa810"); //套内单价上限
		Object baaa811 = this.get("baaa811"); //套内总价下限
		Object eaaa811 = this.get("eaaa811"); //套内总价上限
		
		Object qlouceng = this.get("qlouceng"); //楼层
		Object qdanyuan = this.get("qdanyuan"); //单元
		Object qhuhao = this.get("qhuhao"); //户号
		
		//定义SQL主体
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa801,a.aaa802,a.aaa803,a.aaa804,s1.fvalue cnaaa805,")
				.append("       a.aaa806,a.aaa807,a.aaa808,a.aaa809,a.aaa810,")
				.append("       a.aaa811,a.aaa812")
				.append("  from aa08 a ,syscode s1")
				.append("  where a.aaa701=? and a.aaa805 = s1.fcode and s1.fname = 'aaa805'")
				;
		
		List<Object> param = new ArrayList<>();//真实的参数列表
		param.add(this.get("aaa701"));
		
		//拼接查询语句,并将查询条件添加到参数列表中
		if(this.isNotNull(aaa802))
		{
			sql.append(" and a.aaa802 = ? ");
			param.add(aaa802);
		}
		if(this.isNotNull(aaa803))
		{
			sql.append(" and a.aaa803 like ? ");
			param.add("%"+aaa803+"%");
		}
		if(this.isNotNull(aaa804))
		{
			sql.append(" and a.aaa804 like ? ");
			param.add("%"+aaa804+"%");
		}
		if(this.isNotNull(aaa805))
		{
			sql.append(" and a.aaa805 = ? ");
			param.add(aaa805);
		}
		if(this.isNotNull(aaa806))
		{
			sql.append(" and a.aaa806 = ? ");
			param.add(aaa806);
		}
		if(this.isNotNull(aaa807))
		{
			sql.append(" and a.aaa807 = ? ");
			param.add(aaa807);
		}
		if(this.isNotNull(baaa808))
		{
			sql.append(" and a.aaa808 >= ? ");
			param.add(baaa808);
		}
		if(this.isNotNull(eaaa808))
		{
			sql.append(" and a.aaa808 <= ? ");
			param.add(eaaa808);
		}
		if(this.isNotNull(baaa809))
		{
			sql.append(" and a.aaa809 >= ? ");
			param.add(baaa809);
		}
		if(this.isNotNull(eaaa809))
		{
			sql.append(" and a.aaa809 <= ? ");
			param.add(eaaa809);
		}
		if(this.isNotNull(baaa810))
		{
			sql.append(" and a.aaa810 >= ? ");
			param.add(baaa810);
		}
		if(this.isNotNull(eaaa810))
		{
			sql.append(" and a.aaa810 <= ? ");
			param.add(eaaa810);
		}
		if(this.isNotNull(baaa811))
		{
			sql.append(" and a.aaa811 >= ? ");
			param.add(baaa811);
		}
		if(this.isNotNull(eaaa811))
		{
			sql.append(" and a.aaa811 <= ? ");
			param.add(eaaa811);
		}if(this.isNotNull(qlouceng))
		{
			String louceng = (String) qlouceng;
			
			int size = String.valueOf(qlouceng).length();
			if(size<2) {
				louceng = "0"+qlouceng;
			}
			sql.append(" and substring(a.aaa803,3,2) = ? ");
			param.add(louceng);
		}if(this.isNotNull(qdanyuan))
		{
			String danyuan = (String) qdanyuan;
			
			int size = String.valueOf(qdanyuan).length();
			if(size<2) {
				danyuan = "0"+qdanyuan;
			}
			sql.append(" and substring(a.aaa803,1,2) = ? ");
			param.add(danyuan);
		}if(this.isNotNull(qhuhao))
		{
			String huhao = (String) qhuhao;
			
			int size = String.valueOf(qhuhao).length();
			if(size<2) {
				huhao = "0"+qhuhao;
			}
			sql.append(" and substring(a.aaa803,5,2) = ? ");
			param.add(huhao);
		}
		
		sql.append(" order by a.aaa801");
		
		
		return this.queryForList(sql.toString(), param.toArray());
	}


	/**
	 * 删除单一实例
	 * @return
	 * @throws Exception
	 */
	public boolean delByIdRoom()throws Exception
	{
		String sql = "delete from aa08 where aaa801 = ?";
		
		Object id = this.get("aaa801");
		
		return this.executeUpdate(sql, id)>0;
	}
	
	/**
	 * 批量删除房间
	 * @return
	 * @throws Exception
	 */
	public boolean deleteRooms() throws Exception
	{
		//定义批量删除语句
		String sql = "delete from aa08 where aaa801=?";
		
		//获取要删除的数据的id列表
		String tem[] = this.getIdList("idlist");
		
		return this.batchUpdate(sql, tem);
	}

	/**
	 * 修改单一房间信息
	 * @return
	 * @throws Exception
	 */
	public boolean modifyRoom()throws Exception
	{
		StringBuilder sql2 = new StringBuilder()
				.append("select a.aaa505,a.aaa506 ")
				.append(" from aa05 a where a.aaa502 = ?");
		Map<String, String> m=this.queryForMap(sql2.toString(), this.get("aaa807"));
		
		
		StringBuilder sql=new StringBuilder()
				.append("update aa08 set aaa805=?,aaa806=?,aaa807=?,")
				.append("				 aaa808=?,aaa809=?,aaa810=?,aaa811=?,")
				.append("   			 aaa812=?")
				.append(" where aaa801=?")
    			;
		
		Object aaa809=null;
		if(this.get("aaa808")!=null) 
			aaa809 = Double.parseDouble((String)this.get("aaa808"))*Double.parseDouble((String)m.get("aaa505"));
		else aaa809 = this.get("aaa808");
		
		Object aaa811 = null;
		if(this.get("aaa810")!=null) 
			aaa811 = Double.parseDouble((String)this.get("aaa810"))*Double.parseDouble((String)m.get("aaa506"));
		else aaa811 = this.get("aaa810");
		
		Object tem[]= {
				this.get("aaa805"),
				this.get("aaa806"),
				this.get("aaa807"),
				this.get("aaa808"),

				aaa809,
				this.get("aaa810"),
				aaa811,
				this.get("aaa812"),

				this.get("aaa801")
		};
		
		return this.executeUpdate(sql.toString(), tem)>0;
	}

	/**
	 * 批量修改房间信息
	 * @return
	 * @throws Exception
	 */
	public boolean modifyRooms()throws Exception
	{
		Map<String, String> m = null;
		if(this.get("aaa807")!=null)
		{
			StringBuilder sql2 = new StringBuilder()
					.append("select a.aaa505,a.aaa506 ")
					.append(" from aa05 a where a.aaa502 = ?");
			m=this.queryForMap(sql2.toString(), this.get("aaa807"));
		}

		
		StringBuilder sql=new StringBuilder()
				.append("update aa08 set aaa805=?,aaa806=?,aaa807=?,")
				.append("				 aaa808=?,aaa809=?,aaa810=?,aaa811=?,")
				.append("   			 aaa812=?")
				.append(" where aaa801=?")
    			;
		Object aaa809 = null;
		if(this.get("aaa808")!=null && m!=null) 
			aaa809 = Double.parseDouble((String)this.get("aaa808"))*Double.parseDouble((String)m.get("aaa505"));
		else aaa809 = null;
		
		Object aaa811;
		if(this.get("aaa810")!=null && m!=null) 
			aaa811 = Double.parseDouble((String)this.get("aaa810"))*Double.parseDouble((String)m.get("aaa506"));
		else aaa811 = null;
		
		
		Object stateList[]= {
				this.get("aaa805"),
				this.get("aaa806"),
				this.get("aaa807"),
				this.get("aaa808"),
				
				aaa809,
				this.get("aaa810"),
				aaa811,
				this.get("aaa812")
		};
		
		//获取要更新的数据的id列表
		String idlist[] = this.getIdList("List");
		System.out.println("idlist:");
		for(String i:idlist)
		{
			System.out.println(i);
		}
		
		return this.batchUpdate(sql.toString(), stateList, idlist);
	}


}
