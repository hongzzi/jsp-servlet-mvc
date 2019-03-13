package Controll;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class Email {
	public boolean sendEmail(String email, String authNum){
		try {
			 String host = "smtp.naver.com";
		        final String username = "dlwlgus950403";       //?��?���? ?��메일 주소�? @ naver.com?��주소�? 기재?��?��?��.
		        final String password = "thrhd2017";   //?��?���? ?��메일 비�?번호�? 기재?��?��?��.
		        int port=465;
		         
		        // 메일 ?��?��
		        String recipient = email;    //메일?�� 발송?�� ?��메일 주소�? 기재?�� 줍니?��.
		        String subject = "Books 에서 발송한 이메일 인증 메일 입니다.";
		        String body = "인증번호 [ "+authNum+" ]";
		         
		        Properties props = System.getProperties();
		          
		          
		        props.put("mail.smtp.host", host);
		        props.put("mail.smtp.port", port);
		        props.put("mail.smtp.auth", "true");
		        props.put("mail.smtp.ssl.enable", "true");
		        props.put("mail.smtp.ssl.trust", host);
		           
		        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		            String un=username;
		            String pw=password;
		            protected PasswordAuthentication getPasswordAuthentication() {
		                return new PasswordAuthentication("dlwlgus950403", "thrhd2017");
		            }
		        });
		        session.setDebug(true); //for debug 
		           
		        Message mimeMessage = new MimeMessage(session);
		        
		        mimeMessage.setFrom(new InternetAddress("dlwlgus950403@naver.com","BOOKS","UTF-8"));
		        mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient,recipient,"UTF-8"));
		        mimeMessage.setSubject(subject);
		        mimeMessage.setText(body);
		        Transport.send(mimeMessage);

		}catch(MessagingException e) {
			e.printStackTrace();
			System.out.println(e.toString());
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.toString());
		}
		return true;
	}
	
	public boolean sendEmail_pw(String email, String authNum){
		try {
			 String host = "smtp.naver.com";
		        final String username = "dlwlgus950403";       //?��?���? ?��메일 주소�? @ naver.com?��주소�? 기재?��?��?��.
		        final String password = "thrhd2017";   //?��?���? ?��메일 비�?번호�? 기재?��?��?��.
		        int port=465;
		         
		        // 메일 ?��?��
		        String recipient = email;    //메일?�� 발송?�� ?��메일 주소�? 기재?�� 줍니?��.
		        String subject = "Books 에서 발송한임시 비밀번호 입니다.";
		        String body = "임시 비밀번호 [ "+authNum+" ]";
		         
		        Properties props = System.getProperties();
		          
		          
		        props.put("mail.smtp.host", host);
		        props.put("mail.smtp.port", port);
		        props.put("mail.smtp.auth", "true");
		        props.put("mail.smtp.ssl.enable", "true");
		        props.put("mail.smtp.ssl.trust", host);
		           
		        Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
		            String un=username;
		            String pw=password;
		            protected PasswordAuthentication getPasswordAuthentication() {
		                return new PasswordAuthentication("dlwlgus950403", "thrhd2017");
		            }
		        });
		        session.setDebug(true); //for debug 
		           
		        Message mimeMessage = new MimeMessage(session);
		        
		        mimeMessage.setFrom(new InternetAddress("dlwlgus950403@naver.com","BOOKS","UTF-8"));
		        mimeMessage.setRecipient(Message.RecipientType.TO, new InternetAddress(recipient,recipient,"UTF-8"));
		        mimeMessage.setSubject(subject);
		        mimeMessage.setText(body);
		        Transport.send(mimeMessage);

		}catch(MessagingException e) {
			e.printStackTrace();
			System.out.println(e.toString());
		}catch(Exception e) {
			e.printStackTrace();
			System.out.println(e.toString());
		}
		return true;
	}

	public String RandomNum() {
		StringBuffer buffer = new StringBuffer();
		for(int i=0; i<=6; i++) {
			int n=(int)(Math.random()*10);
			buffer.append(n);
		}
		return buffer.toString();
	}
}
