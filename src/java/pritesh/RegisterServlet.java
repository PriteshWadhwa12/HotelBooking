package pritesh;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Enumeration;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class RegisterServlet extends HttpServlet
{
      String name,value;    
      Connection con;
      Statement st;
      PreparedStatement stat;
      ResultSet rs;
    protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException 
    {
        
        ServletContext context=getServletContext();
        ServletConfig config=getServletConfig();
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        try
        {
            String Fname=request.getParameter("first_name");
            String Lname=request.getParameter("last_name");
            String Userid=request.getParameter("user_id");
            String Password=request.getParameter("password");
            String Email=request.getParameter("email");
            
           
            Enumeration<String>headerNames=request.getHeaderNames();
            while(headerNames.hasMoreElements())
            {
                 name=headerNames.nextElement();
                 value=request.getHeader(name);              
            }
             
            String DriverName=context.getInitParameter("Driver");
            Class.forName(DriverName);
            System.out.println("Driver Loaded");
            String Database=context.getInitParameter("Database");
            con=DriverManager.getConnection(Database);
            System.out.println("Database Connected");
            stat=con.prepareStatement("insert into Register values(?,?,?,?,?)");
            stat.setString(1, Fname);
            stat.setString(2, Lname);
            stat.setString(3, Userid);
            stat.setString(4, Password);
            stat.setString(5, Email);
            stat.executeUpdate();
            
            RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
            rd.include(request, response);
            
        }
        catch(Exception ex)
        {
            System.out.println(ex.getMessage());
        }
        
    }
    
   
}
