<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="javax.mail.*"%>
<%@ page import="javax.mail.internet.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>mail</title>
</head>
<body>
	<%
		String value = request.getParameter("value");
		String mail[] = value.trim().split(",");
		 String to = mail[0];
		 String name = mail[1];
		 String sub = "Greetings from LifeStyle Interiors";
		 String content ="Dear "+name+",\nYour request for painting job has been recieved.\nour team will assign you the painter and give you the contact details.\n Thank You! ";
		
		
		final String from = "lifestyleinteriors2021@gmail.com";
		final String pass = "dkmnbbupdtvgrjor";
		final String host = "smtp.gmail.com";

		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.debug", "true");
		props.put("mail.smtp.host", host);
		props.put("mail.smtp.port", "587");
		props.put("mail.transport.protocol", "smtp");
		props.put("mail.user", from);
		props.put("mail.password", pass);

		Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(from, pass);
			}
		});
		try {
			Message message = new MimeMessage(mailSession);
			message.setFrom(new InternetAddress("lifestyleinteriors2021@gmail.com"));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to));
			message.setSubject(sub);
			message.setText(content);
			Transport.send(message);
			System.out.println("Done");
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
		response.sendRedirect("upload_result.jsp");
	%>
</body>
</html>
