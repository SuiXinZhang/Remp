package test;

import com.remp.system.tools.MailTools;

public class TestTools {

	public static void main(String[] args) {
		Object[] objectContent = 
			{
					"�ʼ�����",
					"��������������������������������"
			};
		Object[] recipientAddress = 
			{
					
					"994594870@qq.com",
					"401109552@qq.com"
			};
		
		MailTools.getSession();
		try {
			MailTools.setMimeMessage(null, objectContent, recipientAddress);
			MailTools.send();
		} catch (Exception e) {
			System.out.println("������");
			e.printStackTrace();
		}
		
	}

}
