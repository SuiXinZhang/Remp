package com.remp.system.tools;

import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import java.util.ResourceBundle;

import javax.activation.DataHandler;
import javax.activation.FileDataSource;
import javax.mail.Address;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.mail.internet.MimeUtility;

public class MailTools {
	//�����˵�ַ
    private static String senderAddress = null;
    //�ռ��˵�ַ
    //public static String recipientAddress = "xxx@qq.com";
    //�������˻���
    private static String senderAccount = null;
    //�������˻�����
    private static String senderPassword = null;
    //����Ӧ�ó�������Ļ�����Ϣ�� Session ����
    private static Session session =null;
    
    private static MimeMessage msg = null;
    
    static
    {
    	ResourceBundle bundle = ResourceBundle.getBundle("DBOptions");
    	senderAddress = bundle.getString("SENDADDRESS");
    	senderAccount = bundle.getString("SINAACCOUNT");
    	senderPassword = bundle.getString("SINAPASSWORD");
    	
    	//1�������ʼ��������Ĳ�������
        Properties props = new Properties();
        //�����û�����֤��ʽ
        props.setProperty("mail.smtp.auth", "true");
        //���ô���Э��
        props.setProperty("mail.transport.protocol", "smtp");
        //���÷����˵�SMTP��������ַ
        props.setProperty("mail.smtp.host", "smtp.sina.com");
        //2��������������Ӧ�ó�������Ļ�����Ϣ�� Session ����
        session = Session.getInstance(props);
        //���õ�����Ϣ�ڿ���̨��ӡ����
        session.setDebug(true);
        //3�������ʼ���ʵ������
        //Message msg = getMimeMessage(session);
        //4������session�����ȡ�ʼ��������Transport
        //Transport transport = session.getTransport();
        //���÷����˵��˻���������
        //transport.connect(senderAccount, senderPassword);
        //�����ʼ��������͵������ռ��˵�ַ��message.getAllRecipients() ��ȡ�������ڴ����ʼ�����ʱ��ӵ������ռ���, ������, ������
        //transport.sendMessage(msg,msg.getAllRecipients());
         
        //5���ر��ʼ�����
        //transport.close();
    }
    
    public static void send() throws Exception
    {
    	//4������session�����ȡ�ʼ��������Transport
    	Transport transport = session.getTransport();
        //���÷����˵��˻���������
        transport.connect(senderAccount, senderPassword);
        //�����ʼ��������͵������ռ��˵�ַ��message.getAllRecipients() ��ȡ�������ڴ����ʼ�����ʱ��ӵ������ռ���, ������, ������
        transport.sendMessage(msg,msg.getAllRecipients());
         
        //5���ر��ʼ�����
        transport.close();
    }
    
    /**
     * ʵ���������Session
     * @return
     */
    public static Session getSession()
    {
    	return MailTools.session;
    }
    
    /**
     * ��ô���һ���ʼ���ʵ������
     * @param imgPath
     * @param objectContent
     * @param recipientAddress
     * @throws Exception
     */
    public static void setMimeMessage(Object objectContent[],List<Object> recipientAddress) throws Exception{
        //1.����һ���ʼ���ʵ������
        msg = new MimeMessage(session);
        //2.���÷����˵�ַ
        msg.setFrom(new InternetAddress(senderAddress));
        /**
         * 3.�����ռ��˵�ַ���������Ӷ���ռ��ˡ����͡����ͣ�����������һ�д�����д����
         * MimeMessage.RecipientType.TO:����
         * MimeMessage.RecipientType.CC������
         * MimeMessage.RecipientType.BCC������
         */
        InternetAddress[] addresses = new InternetAddress[recipientAddress.size()];
        for(int i=0;i<recipientAddress.size();i++)
        {
        	addresses[i] = new InternetAddress((String)recipientAddress.get(i));
        }
        msg.setRecipients(MimeMessage.RecipientType.TO,addresses);
        
        //4.�����ʼ�����
        msg.setSubject((String)objectContent[0],"UTF-8");
         
        //�����������ʼ�����
        msg.setContent((String)objectContent[1], "text/html;charset=UTF-8");
        
       
        //�����ʼ��ķ���ʱ��,Ĭ����������
        msg.setSentDate(new Date());
    }
    
    /**
     * ��ô���һ���ʼ���ʵ������
     * @param session
     * @return
     * @throws MessagingException
     * @throws AddressException
     */
    public static void setMimeMessage(String imgPath,Object objectContent[],Object...recipientAddress) throws Exception{
        //1.����һ���ʼ���ʵ������
        msg = new MimeMessage(session);
        //2.���÷����˵�ַ
        msg.setFrom(new InternetAddress(senderAddress));
        /**
         * 3.�����ռ��˵�ַ���������Ӷ���ռ��ˡ����͡����ͣ�����������һ�д�����д����
         * MimeMessage.RecipientType.TO:����
         * MimeMessage.RecipientType.CC������
         * MimeMessage.RecipientType.BCC������
         */
        InternetAddress[] addresses = new InternetAddress[recipientAddress.length];
        for(int i=0;i<recipientAddress.length;i++)
        {
        	addresses[i] = new InternetAddress((String) recipientAddress[i]);
        }
        msg.setRecipients(MimeMessage.RecipientType.TO,addresses);
        
        //4.�����ʼ�����
        msg.setSubject((String)objectContent[0],"UTF-8");
         
        //�����������ʼ�����
        msg.setContent((String)objectContent[1], "text/html;charset=UTF-8");
        
        if(imgPath != null)
        {
        	// 5. ����ͼƬ"�ڵ�"
            MimeBodyPart image = new MimeBodyPart();
            // ��ȡ�����ļ�
            DataHandler dh = new DataHandler(new FileDataSource("src\\mailTestPic.png"));
            // ��ͼƬ������ӵ�"�ڵ�"
            image.setDataHandler(dh);
            // Ϊ"�ڵ�"����һ��Ψһ��ţ����ı�"�ڵ�"�����ø�ID��
            image.setContentID("mailTestPic");    
            // 6. �����ı�"�ڵ�"
            MimeBodyPart text = new MimeBodyPart();
            // �������ͼƬ�ķ�ʽ�ǽ�����ͼƬ�������ʼ�������, ʵ����Ҳ������ http ���ӵ���ʽ�������ͼƬ
            text.setContent("����һ��ͼƬ<br/><a href='http://www.cnblogs.com/ysocean/p/7666061.html'><img src='cid:mailTestPic'/></a>", "text/html;charset=UTF-8");
             
            // 7. ���ı�+ͼƬ������ �ı� �� ͼƬ"�ڵ�"�Ĺ�ϵ���� �ı� �� ͼƬ"�ڵ�"�ϳ�һ�����"�ڵ�"��
            MimeMultipart mm_text_image = new MimeMultipart();
            mm_text_image.addBodyPart(text);
            mm_text_image.addBodyPart(image);
            mm_text_image.setSubType("related");    // ������ϵ
             
            // 8. �� �ı�+ͼƬ �Ļ��"�ڵ�"��װ��һ����ͨ"�ڵ�"
            // ������ӵ��ʼ��� Content ���ɶ�� BodyPart ��ɵ� Multipart, ����������Ҫ���� BodyPart,
            // ����� mailTestPic ���� BodyPart, ����Ҫ�� mm_text_image ��װ��һ�� BodyPart
            MimeBodyPart text_image = new MimeBodyPart();
            text_image.setContent(mm_text_image);
             
            // 9. ��������"�ڵ�"
            MimeBodyPart attachment = new MimeBodyPart();
            // ��ȡ�����ļ�
            DataHandler dh2 = new DataHandler(new FileDataSource("src\\mailTestDoc.docx"));
            // ������������ӵ�"�ڵ�"
            attachment.setDataHandler(dh2);
            // ���ø������ļ�������Ҫ���룩
            attachment.setFileName(MimeUtility.encodeText(dh2.getName()));       
             
            // 10. ���ã��ı�+ͼƬ���� ���� �Ĺ�ϵ���ϳ�һ����Ļ��"�ڵ�" / Multipart ��
            MimeMultipart mm = new MimeMultipart();
            mm.addBodyPart(text_image);
            mm.addBodyPart(attachment);     // ����ж�����������Դ������������
            mm.setSubType("mixed");         // ��Ϲ�ϵ
     
            // 11. ���������ʼ��Ĺ�ϵ�������յĻ��"�ڵ�"��Ϊ�ʼ���������ӵ��ʼ�����
            msg.setContent(mm);
        }
        
         
       
        //�����ʼ��ķ���ʱ��,Ĭ����������
        msg.setSentDate(new Date());
    }
}
