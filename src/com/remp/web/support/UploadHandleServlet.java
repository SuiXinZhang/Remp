package com.remp.web.support;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.*;

import com.remp.services.impl.ac.Ac01ServicesImpl;



@WebServlet("/UploadHandleServlet")
public class UploadHandleServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Ac01ServicesImpl ac01ServicesImpl = new Ac01ServicesImpl(); 
		DiskFileItemFactory fac = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(fac);
		upload.setHeaderEncoding("GBK");
		// ��ȡ����ϴ��ļ�
		List fileList = null;
		try 
		{
			fileList = upload.parseRequest(request);
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("�ļ��б��ȡ�쳣");
		}
		// �����ϴ��ļ�д�����
		Iterator it = fileList.iterator();
		InputStream is = null;
		String suff = null;
		while (it.hasNext()) {
			Object obit = it.next();
			if (obit instanceof DiskFileItem) 
			{
				DiskFileItem item = (DiskFileItem) obit;
				String name = item.getName();
				int index = name.indexOf(".");
				System.out.println(index);
				suff = name.substring(index+1);
				System.out.println(suff);
				// ���item���ļ��ϴ�����
				// ����ļ�����·��
				if(!item.isFormField())
				{
					is = item.getInputStream();
				}
			}
		}
		String msg = null;
		try {
			msg = ac01ServicesImpl.insertBatch(is,suff)?"��������ɹ�!":"��������ʧ��!";
		} catch (Exception e) {
			e.printStackTrace();
			msg = "�������!";
		}
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("test.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
