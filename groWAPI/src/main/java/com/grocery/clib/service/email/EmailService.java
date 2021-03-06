package com.grocery.clib.service.email;

import java.io.FileReader;
import java.util.Properties;

import javax.jms.Queue;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jms.core.JmsMessagingTemplate;
import org.springframework.stereotype.Service;

import com.grocery.clib.util.EBIZUtil;
import com.grocery.model.email.EmailMessage;


@Service
public class EmailService {

	static Properties emailProperties = new Properties();
	String emailPropertiesFile;
	String USER_NAME;
	String PASSWORD;
	String SMTP_HOST;
	String USERNAME_ONLY;
	String SENDER_EMAIL;
	@Autowired
	private JmsMessagingTemplate jmsMessagingTemplate;

//	@Autowired
//	private Queue queue;
//	
	public EmailService() {

		try {
			emailPropertiesFile = EBIZUtil.getConfigDIR() + "/email.properties";
			
		//getting file location
			System.out.println("emailPropertiesFile->"+emailPropertiesFile);
			emailProperties.load(new FileReader(emailPropertiesFile));
			USER_NAME = emailProperties.getProperty("mail.smtp.user");
			PASSWORD = emailProperties.getProperty("mail.smtp.password");
			SMTP_HOST = emailProperties.getProperty("mail.smtp.host");
			SENDER_EMAIL =  emailProperties.getProperty("mail.smtp.senderEmail");
			
			String[] user = USER_NAME.split("@");
			USERNAME_ONLY = user[0];

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
//	public void send2EmailQueue(EmailMessage emailMessage)  {
//		this.jmsMessagingTemplate.convertAndSend(this.queue, emailMessage);
//	}
	
	public void sendEmail(String emailTo, String emailSubject, String emailBodyMessage)  {
		try{

		SMTPAuthenticator auth = new SMTPAuthenticator();
		Session session = Session.getInstance(emailProperties, auth);
		session.setDebug(false);
		System.out.println("emailPropertiesFile->"+SENDER_EMAIL+" "+USERNAME_ONLY+" "+ PASSWORD);
		MimeMessage msg = new MimeMessage(session);
		msg.setText(emailBodyMessage);
		msg.setSubject(emailSubject);
		msg.setFrom(new InternetAddress(SENDER_EMAIL));
		msg.setContent(emailBodyMessage,"text/html");
		msg.addRecipient(Message.RecipientType.TO, new InternetAddress(emailTo));
		
		Transport transport = session.getTransport("smtps");
		transport.connect(SMTP_HOST, 465, USERNAME_ONLY, PASSWORD);
		transport.sendMessage(msg, msg.getAllRecipients());
		transport.close();
		} catch(Exception e){
			e.printStackTrace();
		}

	}

	private class SMTPAuthenticator extends Authenticator {
		public PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(USER_NAME, PASSWORD);
		}
	}
	public static void main(String s[]){
		String emailId ="gomy@gmail.com";
		String[] user = emailId.split("@");
		System.out.println(user[0]);
	}
}
