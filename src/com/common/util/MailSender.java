package com.common.util;
import java.text.ParseException;
import com.megainfoware.mail.auth.ConfirmationMailer;
	public class MailSender {
	

		public static void main(String[] args) throws ParseException {
			ConfirmationMailer cm = new ConfirmationMailer();
			cm.sendMailTwoParams("akashsuthar2015@gmail.com", "Testing Mail");
		}

	}

