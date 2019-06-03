package pritesh;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


/**
 *
 * @author Bhaskar Gupta
 */
public class EmailServlet extends HttpServlet {
      Connection con;
      Statement stmt;
      PreparedStatement stat;
      Properties emailProperties;
      Session mailSession;
      MimeMessage emailMessage;
 
    protected void service(HttpServletRequest request,HttpServletResponse response) 
            throws ServletException,IOException
    {
        String mail=request.getParameter("EmailPritesh");
        EmailServlet mailservlet=new EmailServlet();
        mailservlet.setMailServerProperties();
          try {
              mailservlet.createEmailMessage(mail);
          } catch (MessagingException ex) {
              Logger.getLogger(EmailServlet.class.getName()).log(Level.SEVERE, null, ex);
          }
          try {
              mailservlet.sendEmail();
          } catch (MessagingException ex) {
              Logger.getLogger(EmailServlet.class.getName()).log(Level.SEVERE, null, ex);
          }
        
        ServletContext context=getServletContext();
        ServletConfig config=getServletConfig();
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        try
        {
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            
            con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=HotelManagement;user=sa;password=wadhwas");
            stat=con.prepareStatement("insert into Subscribe values(?)");
            stat.setString(1, mail);
            stat.executeUpdate();
            
            
        }
        catch(Exception ex)
        {
            out.println(ex.getMessage());
        } 
        
    }
    
    private void setMailServerProperties() {

		String emailPort = "587";//gmail's smtp port

		emailProperties = System.getProperties();
		emailProperties.put("mail.smtp.port", emailPort);
		emailProperties.put("mail.smtp.auth", "true");
		emailProperties.put("mail.smtp.starttls.enable", "true");

	}

	private void createEmailMessage(String mail) throws AddressException,
			MessagingException {
		String toEmails = mail;
		String emailSubject = "Subscription";
		String emailBody = "This is an auto generated email ....";

		mailSession = Session.getDefaultInstance(emailProperties, null);
		emailMessage = new MimeMessage(mailSession);

//		for (int i = 0; i < toEmails.length; i++) {
			emailMessage.addRecipient(Message.RecipientType.TO,new InternetAddress(toEmails));
//		}

		emailMessage.setSubject(emailSubject);
		emailMessage.setContent(emailBody, "text/html");//for a html email
		//emailMessage.setText(emailBody);// for a text email

	}

	private void sendEmail() throws AddressException, MessagingException {

		String emailHost = "smtp.gmail.com";
		String fromUser = "priteshwadhwa46";//just the id alone without @gmail.com
		String fromUserEmailPassword = "ARIHANTcity707";

		Transport transport = mailSession.getTransport("smtp");

		transport.connect(emailHost, fromUser, fromUserEmailPassword);
		transport.sendMessage(emailMessage, emailMessage.getAllRecipients());
		transport.close();
		System.out.println("Email sent successfully.");
	}

    
}
