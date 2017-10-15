package com.alphalogic.mail;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.MimeMessage;

public class MailSender {
	public static boolean sendMail(String receiver,String keyword)
	{
		final String username = "timilsina.sandesh@gmail.com";
	    final String password = "Folder_07";
	    String recipient = receiver;
	    
	    Properties props = new Properties();
	    props.put("mail.smtp.host", "smtp.gmail.com");
	    props.put("mail.from", "sumit.java1001@gmail.com");
	    props.put("mail.smtp.starttls.enable", "true");
	    props.put("mail.smtp.port", "587");
	    props.setProperty("mail.smtp.debug", "true");
	    
	    Session session1 = Session.getInstance(props, null);
	    
	    MimeMessage msg = new MimeMessage(session1);
	    try{
	    msg.setRecipients(Message.RecipientType.TO, recipient);
	    msg.setSubject("Thank you for Logging In");
	    msg.setText("Dear User,\n"
	    		+ "Thank you for Showing Up in my portal. Your new Credentials are as follows\n"
	    		+ "Your Email :"+receiver+"\nYour Password :"+keyword);
	    
	    Transport transport = session1.getTransport("smtp");
	    transport.connect(username, password);
	    transport.sendMessage(msg, msg.getAllRecipients());
	    transport.close();
	    System.out.println("Mail sent successfully!!!!!!!");
	    return true;
	    }catch(MessagingException m){
	    	m.printStackTrace();
	    }
		return false;
	}
	
}
