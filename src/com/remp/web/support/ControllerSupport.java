package com.remp.web.support;

import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.remp.services.BaseServices;

public abstract class ControllerSupport implements BaseController {

	
	
	/*****************************************
	 * 	        ҵ���߼�������ܹ�ע��
	 *****************************************/
	private BaseServices services = null;
	protected void setServices(BaseServices services)
	{
		System.out.println(services);
		this.services = services;
	}
	
	/*****************************************
	 * 	        ����ҵ�����̷�װ
	 *****************************************/
	/**
	 * ����������ѯ
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
			this.saveAttribute("msg", "û�з�������������!");
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
			this.saveAttribute("msg", "û�з�������������!");
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
			this.saveAttribute("msg", "��ʾ:��������ɾ�����ֹ����");
		}
	}
	
	/**
	 * ͨ��ID��ѯ���/�޸�ҳ����Ϣ
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
			this.saveAttribute("msg", "��ʾ:��������ɾ�����ֹ����");
		}
	}
	
	/**
	 * ������Ϊ���ܿ���
	 * <
	 *   ����Ϣ��ʾ
	 * >
	 * @param utype
	 * @param msgText
	 * @throws Exception
	 */
	protected final void update(String utype,String msgText)throws Exception
	{
		String msg = this.executeUpdateMethod(utype)?"�ɹ�":"ʧ��";
		this.saveAttribute("msg",msgText + msg);
	}
	
	
	/**
	 * ���б�ŵ���Ϣ��ʾ�ĸ�����Ϊ
	 * @param utype
	 * @param typeText
	 * @param msgText
	 * @param key
	 * @throws Exception
	 */
	protected final void update(String utype,String typeText,String msgText,String key)throws Exception
	{
		String msg = typeText +"ʧ��";
		if(this.executeUpdateMethod(utype))
		{
			msg = msgText + "[ " +this.dto.get(key) + " ]";
		}
		this.saveAttribute("msg",msg);
	}
	
	
	/**
	 * ɾ��������ݼ���
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
	 * ͨ������ִ�и��·���
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
	 * 	        ����������
	 *****************************************/
	protected Map<String,Object> dto = null;
	@Override
	public void setMapDto(Map<String,Object> dto) {
		this.dto = dto;
		this.services.setMapDto(dto);
	}

	
	/*****************************************
	 * 	        ���������
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
	 * ���ڲ�����ҳ¼��ֵ�����ݿ����Ƿ��м�¼
	 * @return
	 * @throws Exception
	 */
	protected final Map<String, String> contract(String methodName)throws Exception
	{
		Map<String, String> ins = this.executeGetInfoMethod(methodName);
		if(ins!=null)
		{
			this.saveAttribute("ins", ins);
			this.saveAttribute("msg", "��֤�ɹ�");
		}
		else
		{
			this.saveAttribute("msg", "��ʾ:��������ɾ�����ֹ����");
		}
		return ins;
	}
	
	/**
	 * ����session,���ߴ��ݸ�service��
	 */
	@Override
	public void setSession(HttpSession session) 
	{
		services.setSession(session);
	}
}
