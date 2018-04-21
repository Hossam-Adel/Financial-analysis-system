package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class Mail {
	public void send_mail(String email,String message){
	try{
        String host ="smtp.outlook.com" ;
        String user = "system.thestock@outlook.com";
        String pass = "amrgamalthestock@";
        String to = email;
        String from = "system.thestock@outlook.com";
        String subject = "Thestock.com ";
        String messageText = message;
        boolean sessionDebug = false;

        Properties props = System.getProperties();

        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", host);
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.required", "true");

        java.security.Security.addProvider(new com.sun.net.ssl.internal.ssl.Provider());
        Session mailSession = Session.getDefaultInstance(props, null);
        mailSession.setDebug(sessionDebug);
        Message msg = new MimeMessage(mailSession);
        msg.setFrom(new InternetAddress(from));
        InternetAddress[] address = {new InternetAddress(to)};
        msg.setRecipients(Message.RecipientType.TO, address);
        msg.setSubject(subject); msg.setSentDate(new Date());
        msg.setText(messageText);

       Transport transport=mailSession.getTransport("smtp");
       transport.connect(host, user, pass);
       transport.sendMessage(msg, msg.getAllRecipients());
       transport.close();
       System.out.println("message send successfully");
    }catch(Exception ex)
    {
        System.out.println(ex);
    }

  }
	public boolean check_email(String email) throws SQLException{
		Connector f = new Connector();
		Connection conn = f.connect();
		String firm_name = "select * from user where email=?";
		PreparedStatement fn = conn.prepareStatement(firm_name);
		fn.setString(1, email );
		ResultSet rs = fn.executeQuery();
		boolean check = false;
		while(rs.next() == true){
			check= true;
		}
		return check;
	}
}
