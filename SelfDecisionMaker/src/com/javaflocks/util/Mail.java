package com.javaflocks.util;

import java.util.*;  
import javax.mail.*;  
import javax.mail.internet.*;  
import javax.activation.*;

/**
 *
 * @author Agraj
 */
public class Mail {

    public void sendMail(String host,String port,String username,String password,String from,String to,String subject,String msg){
        try
        {
           
        // -- Attaching to default Session, or we could start a new one --
        Properties props = new Properties();
		props.put("mail.smtp.host",host);
		props.put("mail.smtp.socketFactory.port", port);
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", port);
		Session session = Session.getInstance(props, new javax.mail.Authenticator() {  
             protected PasswordAuthentication getPasswordAuthentication() {  
            	    return new PasswordAuthentication(username,password);  
            	      }  
            	    });

		MimeMessage message = new MimeMessage(session);  
        message.setFrom(new InternetAddress(from));  
        message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
        message.setSubject(subject);  
        message.setText(msg);  
 
        // Send message  
        Transport.send(message);  
        System.out.println("message sent successfully....");  
        }
        catch (Exception ex)
        {
          ex.printStackTrace();
          System.out.println("Exception "+ex);
         }
  }
 public static void main(String args[])
 {
	 new Mail().sendMail("smtp.zoho.com","465","sher.singh@javaflocks.com","Sher@1987","sher.singh@javaflocks.com","javaflocks@gmail.com","This is Test Email","Doing Mail Testing"); 
 }
}
