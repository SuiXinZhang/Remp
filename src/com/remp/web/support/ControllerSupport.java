package com.remp.web.support;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.remp.services.BaseServices;

public abstract class ControllerSupport implements BaseController {

	
	
	/*****************************************
	 * 	        业务逻辑组件及架构注入
	 *****************************************/
	private BaseServices services = null;
	protected void setServices(BaseServices services)
	{
		System.out.println(services);
		this.services = services;
	}
	
	/*****************************************
	 * 	        子类业务流程封装
	 *****************************************/
	/**
	 * 数据批量查询
	 * @throws Exception
	 */
	protected final void savePageDate() throws Exception
	{
		List<Map<String,String>> rows=this.services.query();
		if(rows.size()>0)
		{
			this.saveAttribute("rows", rows);
		}
		else
		{
			this.saveAttribute("msg", "没有符合条件的数据!");
		}	
	}
	
	
	protected final void QueryInfo(String methodName)throws Exception
	{
		List<Map<String,String>> rows=this.executeQueryInfoMethod(methodName);
		System.out.println("rows.size:"+rows.size());
		if(rows.size()>0)
		{
			this.saveAttribute("rows", rows);
		}
		else
		{
			this.saveAttribute("msg", "没有符合条件的数据!");
		}	
	}
	
	protected final void saveInfo(String methodName)throws Exception
	{
		Map<String, String> ins = this.executeGetInfoMethod(methodName);
		if(ins!=null)
		{
			this.saveAttribute("ins", ins);
		}
		else
		{
			this.saveAttribute("msg", "提示:该数据已删除或禁止访问");
		}
	}
	
	/**
	 * 通过ID查询添加/修改页面信息
	 * @throws Exception
	 */
	protected final void savePageInstance() throws Exception
	{
		Map<String,String> ins = this.services.findById();
		if(ins!=null)
		{
			this.saveAttribute("ins", ins);
		}
		else
		{
			this.saveAttribute("msg", "提示:该数据已删除或禁止访问");
		}
	}
	
	/**
	 * 更新行为的总开关
	 * <
	 *   简单消息提示
	 * >
	 * @param utype
	 * @param msgText
	 * @throws Exception
	 */
	protected final void update(String utype,String msgText)throws Exception
	{
		String msg = this.executeUpdateMethod(utype)?"成功":"失败";
		this.saveAttribute("msg",msgText + msg);
	}
	
	
	/**
	 * 带有编号的消息提示的更新行为
	 * @param utype
	 * @param typeText
	 * @param msgText
	 * @param key
	 * @throws Exception
	 */
	protected final void update(String utype,String typeText,String msgText,String key)throws Exception
	{
		String msg = typeText +"失败";
		if(this.executeUpdateMethod(utype))
		{
			msg = msgText + "[ " +this.dto.get(key) + " ]";
		}
		this.saveAttribute("msg",msg);
	}
	
	
	/**
	 * 删除后的数据检索
	 * @throws Exception
	 */
	protected final void savePageDataForDelete() throws Exception
	{
		List<Map<String,String>> rows = this.services.query();
		if(rows.size()>0)
		{
			this.saveAttribute("rows", rows);
		}
	}
	
	/**
	 * 通过反射执行更新方法
	 * @param methodName
	 * @return
	 * @throws Exception
	 */
	private boolean executeUpdateMethod(String methodName)throws Exception
	{
		System.out.println(methodName);
		Method method = this.services.getClass().getDeclaredMethod(methodName);
		method.setAccessible(true);
		return (boolean)method.invoke(services);
	}
	
	private Map<String, String> executeGetInfoMethod(String methodName)throws Exception
	{
		System.out.println(methodName);
		Method method = this.services.getClass().getDeclaredMethod(methodName);
		method.setAccessible(true);
		return (Map<String, String>)method.invoke(services);
	}
	
	private List<Map<String, String>> executeQueryInfoMethod(String methodName)throws Exception
	{
		System.out.println(methodName);
		Method method = this.services.getClass().getDeclaredMethod(methodName);
		method.setAccessible(true);
		return (List<Map<String, String>>)method.invoke(services);
	}
	
	/*****************************************
	 * 	        数据输入流
	 *****************************************/
	protected Map<String,Object> dto = null;
	@Override
	public void setMapDto(Map<String,Object> dto) {
		this.dto = dto;
		this.services.setMapDto(dto);
	}

	
	/*****************************************
	 * 	        数据输出流
	 *****************************************/
	private Map<String,Object> attribute = new HashMap<>();
	
	@Override
	public Map<String, Object> getAttribute() {
		return this.attribute;
	}
	
	protected void saveAttribute(String key,Object value)
	{
		this.attribute.put(key, value);
	}

	/**
	 * 用于查找网页录入值在数据库中是否有记录
	 * @return
	 * @throws Exception
	 */
	protected final Map<String, String> contract(String methodName)throws Exception
	{
		Map<String, String> ins = this.executeGetInfoMethod(methodName);
		if(ins!=null)
		{
			this.saveAttribute("ins", ins);
			this.saveAttribute("msg", "验证成功");
		}
		else
		{
			this.saveAttribute("msg", "提示:该数据已删除或禁止访问");
		}
		return ins;
	}
	
	/**
	 * 设置session,暗线传递给service层
	 */
	@Override
	public void setSession(HttpSession session) 
	{
		services.setSession(session);
	}
}
