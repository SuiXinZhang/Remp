package com.remp.web.support;

import java.io.IOException;
import java.io.InputStream;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.commons.fileupload.disk.DiskFileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.*;

import com.remp.services.impl.ac.Ac01ServicesImpl;


@MultipartConfig
@WebServlet("/UploadHandleServlet")
public class UploadHandleServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Ac01ServicesImpl ac01ServicesImpl = new Ac01ServicesImpl(); 
//		DiskFileItemFactory fac = new DiskFileItemFactory();
//		ServletFileUpload upload = new ServletFileUpload(fac);
//		upload.setHeaderEncoding("GBK");
//		// 获取多个上传文件
//		List fileList = null;
//		try 
//		{
//			fileList = upload.parseRequest(request);
//		} catch (Exception e) {
//			e.printStackTrace();
//			System.out.println("文件列表读取异常");
//		}
		// 遍历上传文件写入磁盘
//		Iterator it = fileList.iterator();
//		InputStream is = null;
//		String suff = null;
//		while (it.hasNext()) {
//			Object obit = it.next();
//			if (obit instanceof DiskFileItem) 
//			{
//				DiskFileItem item = (DiskFileItem) obit;
//				String name = item.getName();
//				int index = name.indexOf(".");
//				System.out.println(index);
//				suff = name.substring(index+1);
//				System.out.println(suff);
//				// 如果item是文件上传表单域
//				// 获得文件名及路径
//				if(!item.isFormField())
//				{
//					is = item.getInputStream();
//				}
//			}
//		}
		String msg = null;
		try {
			Part part = request.getPart("excelfilename");
			String name = part.getHeader("content-disposition");
			System.out.println(name);
			String suff = name.substring(name.indexOf(".")+1,name.length()-1);
			//调用servces方法
			msg = ac01ServicesImpl.insertBatch(part.getInputStream(),suff)?"批量插入成功!":"批量插入失败!";
		} catch (Exception e) {
			e.printStackTrace();
			msg = "网络故障!";
		}
		request.setAttribute("msg", msg);
		request.getRequestDispatcher("test.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
