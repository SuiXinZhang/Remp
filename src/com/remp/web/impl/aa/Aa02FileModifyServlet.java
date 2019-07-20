package com.remp.web.impl.aa;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.remp.services.impl.aa.Aa02ServicesImpl;
import com.remp.system.tools.Tools;

@MultipartConfig
@WebServlet("/aa/Aa02FileModifyServlet")
public class Aa02FileModifyServlet extends HttpServlet{

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//����services
		Aa02ServicesImpl services = new Aa02ServicesImpl();
		//֯��dto����
		Map<String, Object> dto= Tools.createDto(request);
		
		
		String filePath=null;
		String dataPath = null;
		
		//�����ϴ��ļ�ʱ���ļ��ϴ�����
	    Part part = request.getPart("fileaaa216");
	    if(part.getSubmittedFileName()!="")
	    {
			
			//�õ��ļ��洢·��
			String rootUrl = request.getServletContext().getRealPath("/");
			
			//���һ��ȫ�µ�id������תΪString,����ֹ�ļ�����
			String id = (String) dto.get("aaa201");
			
			dataPath = "/static/layui/images"+"/"+id  + part.getSubmittedFileName();
			
			filePath = rootUrl+ dataPath;
			
			part.write(filePath);
			
			System.out.println("�ϴ����ļ�·����"+filePath);
	    }
		
	    dto.put("aaa216", dataPath);
		services.setMapDto(dto);
		
		//���֪ͨ��Ϣ�����ݿ�
		try {
			if(services.modifyProject())
			{
				request.setAttribute("msg", "��Ŀ��Ϣ�޸ĳɹ�");
			}
			else
			{
				request.setAttribute("msg", "��Ŀ��Ϣ�޸�ʧ��");
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//ִ��һ���޸ĺ�Ĳ�ѯ
		Map<String, String> ins = null;
		try {
			ins = services.findById();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(ins!=null)
		{
			request.setAttribute("ins", ins);
		}
		else
		{
			request.setAttribute("msg", "��ʾ:��������ɾ�����ֹ����");
		}
		
		request.getRequestDispatcher("/aa/projectAdd.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
