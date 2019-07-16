package test;

import com.remp.system.tools.MailTools;

public class TestTools {

	public static void main(String[] args) {
		Object[] objectContent = 
			{
					"邮件测试",
					"啦啦啦啦德玛西亚啦啦啦啦德玛西亚"
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
			System.out.println("出错了");
			e.printStackTrace();
		}
		
	}

}
