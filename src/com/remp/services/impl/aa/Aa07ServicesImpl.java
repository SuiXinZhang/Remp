package com.remp.services.impl.aa;

import java.util.List;
import java.util.Map;

import com.remp.services.JdbcServicesSupport;
import com.remp.system.tools.Tools;

/**
 * 此类用于操作楼栋信息表aa07
 * @author Phoenix
 *
 */
public class Aa07ServicesImpl extends JdbcServicesSupport{
	/**
	 * 用于查询当前楼栋的基本信息
	 */
	public Map<String,String> findById()throws Exception
	{
		StringBuilder sql=new StringBuilder()
    			.append("select a.aaa702,a.aaa703,a.aaa704,a.aaa705,a.aaa706,a.aaa707")
    			.append("  from aa07 a")
    			.append(" where a.aaa701=?")
    			;
	    return	this.queryForMap(sql.toString(), this.get("aaa701"));
	}
	
	/**
	 * 查询当前区域的所有楼栋
	 * @return
	 * @throws Exception
	 */
	public List<Map<String,String>> findAllBuilding()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("select a.aaa701,a.aaa702,a.aaa703,a.aaa704,a.aaa705,")
				.append("       a.aaa706,a.aaa707")
				.append("  from aa07 a")
				.append("  where a.aaa601=?")//查询楼栋且属于当前区域
				;

		return this.queryForList(sql.toString(),this.get("aaa601"));
	}
	
	/**
	 * 在当前区域下添加楼栋,并批量生成房间
	 * @return
	 * @throws Exception
	 */
	public boolean addBuilding()throws Exception
	{
		int aaa701 = Tools.getSequence("aaa701");
		this.put("aaa701", aaa701);
		
		//生成楼栋
		StringBuilder sql=new StringBuilder()
				.append("insert into aa07(aaa701,aaa601,aaa702,aaa703,aaa704,")
				.append("				  aaa705,aaa706,aaa707)")
				.append("		value(?,?,?,?,?,")
				.append("			  ?,?)")
    			;
		Object []args = {//默认创建顶级项目
				aaa701,
				this.get("aaa601"),
				this.get("aaa702"),
				this.get("aaa703"),
				this.get("aaa704"),
				this.get("aaa705"),
			
				this.get("aaa706"),
				this.get("aaa707")
			};
		this.appendSql(sql.toString(), args);
		
		//生成房间
		StringBuilder sql2 = new StringBuilder()
				.append("insert into aa08(aaa701,aaa802,aaa803,aaa804,aaa805,")
				.append("				  aaa806,aaa807,aaa808,aaa809,aaa810,")
				.append("				  aaa811)")
				.append("		value(?,?,?,?,?,")
				.append("			  ?,?,?,?,?,")
				.append("			  ?)")
				;
		
		
		for(int i=0;i<(Integer)(this.get("aaa704"));i++)//楼层数
		{
			for(int j=0;j<(Integer)(this.get("aaa705"));j++)//单元数
			{
				for(int k=0;k<(Integer)(this.get("aaa706"));k++)//每层每单元户数
				{
					
					Object []args2 = {//创建默认房间类型
							aaa701,	                                    //刚刚生成的楼栋流水号
							this.get("aaa802"),	                        //区域流水号
							(String)this.get("aaa802")+aaa701+j+i+k,	//房间编码（区域流水号+楼栋流水号+单元号+楼层号+户号）
							""+j+i+k,                                   //房间号
							this.get("aaa804"),                         //地址(页面自动录入)
							"01",                                       //状态 默认01等待
						
							"租售",	                                    //租售类型 默认租售
							null,                                       //户型编码
							null,                                       //默认填写户型建筑单价
							null,							            //默认填写户型建筑总价（单价*面积）
							null,                                       //默认填写户型套内单价
							null                                        //默认填写户型套内总价
						};
					
					this.appendSql(sql2.toString(), args2);
				}
			}
		}

		
		return this.executeTransaction();
	}
	
	/**
	 * 修改楼栋信息(层数，单元数，户数不可修改)
	 * @return
	 * @throws Exception
	 */
	public boolean modifyBuilding()throws Exception
	{
		StringBuilder sql=new StringBuilder()
				.append("update aa07 set aaa702=?,aaa703=?,aaa607=?")
				.append(" where aaa701=?")
    			;
		Object tem[]= {
				this.get("aaa702"),
				this.get("aaa703"),
				this.get("aaa707"),
				
				this.get("aaa701") 
		};
		
		return this.executeUpdate(sql.toString(), tem)>0;
	}
	
	/**
	 * 删除楼栋信息
	 * @return
	 * @throws Exception
	 */
	public boolean delByIdBuilding()throws Exception
	{
		String sql = "delete from aa07 where aaa701 = ?";
		
		Object id = this.get("aaa701");
		
		return this.executeUpdate(sql, id)>0;
	}
}
