/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package utilPackage;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

/**
 *
 * @author adala_06k8xra
 */
public class deleteusermail {
    public static void deleteuser(String email) {

    final String to = email;
    final String subject = "Regarding Account Deletion";
    final String messg = "This Message is to Confirm Account Deletion. For any Issues submit a direct email or contact us using the <a href='http://localhost:8080/HotelZee/Contact.jsp'>Contact Form</a>";
    final String type = "text/html";
    final String from = "hotelzee422@gmail.com";
    final String pass = "hz@44422";
    String host = "smtp.gmail.com";

    // Creating Properties object
    Properties props = new Properties(); 

    // Defining properties
    props.put("mail.smtp.host", host);
    props.put("mail.transport.protocol", "smtp");
    props.put("mail.smtp.auth", "true");
    props.put("mail.smtp.starttls.enable", "true");
    props.put("mail.user", from);
    props.put("mail.password", pass);
    props.put("mail.port", "465");

    // Authorized the Session object.
    Session mailSession = Session.getInstance(props, new javax.mail.Authenticator() {
        @Override
        protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(from, pass);
        }
    }); 

    try {
        // Create a default MimeMessage object.
        MimeMessage message = new MimeMessage(mailSession);
        message.setFrom(new InternetAddress(from));
        message.addRecipient(Message.RecipientType.TO,
                new InternetAddress(to));
        message.setSubject(subject);
        message.setContent(messg,type);
        
        // Send message
        Transport.send(message);

    } catch (MessagingException mex) {
        mex.printStackTrace();
    }
    }
}
