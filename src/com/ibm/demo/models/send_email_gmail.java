package com.ibm.demo.models;

import java.util.*; 
import javax.mail.*; 
import javax.mail.PasswordAuthentication;
import javax.mail.internet.*;


public class send_email_gmail{
	public static void main(String args[]) {
		final String username = "lifestyleinteriors2021@gmail.com";
		final String password = "dkmnbbupdtvgrjor";
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.debug", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
			return new PasswordAuthentication(username, password);
			}
		  });
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress("lifestyleinteriors2021@gmail.com"));
			message.setRecipients(Message.RecipientType.TO,
			InternetAddress.parse("lifestyleinteriors2021@gmail.com"));
			message.setSubject("Testing Subject");
			message.setText("Dear user,"
				+ "\n\n No spam to my email, please!"
				+ "Visit https://chillyfacts.com");
			Transport.send(message);
			System.out.println("Done");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
}