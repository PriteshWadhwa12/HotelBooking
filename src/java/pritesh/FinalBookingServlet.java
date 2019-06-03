package pritesh;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;  
import java.util.Date;  
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
public class FinalBookingServlet extends HttpServlet {
    Connection con;
    Statement stmt;
    PreparedStatement stat;
    ResultSet rs;
    protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
   try {
//            String CardName=request.getParameter("");
//            long CNum=Long.parseLong(request.getParameter(""));
//            int CVV=Integer.parseInt(request.getParameter(""));
//            int em=Integer.parseInt(request.getParameter(""));
//            int ey=Integer.parseInt(request.getParameter(""));
           HttpSession session=request.getSession(); 
           PrintWriter out=response.getWriter();
           
            ServletContext context=getServletContext();
            ServletConfig config=getServletConfig();
        
            String DriverName=context.getInitParameter("Driver");
            Class.forName(DriverName);
            System.out.println("Driver Loaded");
            String Database=context.getInitParameter("Database");
            Connection con=DriverManager.getConnection(Database);
            System.out.println("Database Connected");
            stat=con.prepareStatement("insert into Final_Table values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            stat.setString(1, (String)session.getAttribute("fName"));
            stat.setString(2, (String) session.getAttribute("user"));
            stat.setString(3, (String) session.getAttribute("date1"));
            stat.setString(4, (String) session.getAttribute("date2"));
            stat.setString(5, (String) session.getAttribute("id"));
            stat.setString(6, (String) session.getAttribute("name"));
            stat.setInt(7, (Integer) session.getAttribute("price"));
            stat.setString(8, (String) session.getAttribute("place"));
            stat.setString(9, (String) session.getAttribute("image"));
            stat.setString(10, (String) session.getAttribute("address"));
            stat.setString(11, (String) session.getAttribute("email2"));
            stat.setLong(12, (long) session.getAttribute("mobile2"));
            stat.setInt(13, (Integer) session.getAttribute("NumDays"));
            stat.setLong(14, (long) session.getAttribute("Calc"));
            stat.executeUpdate();
              
            RequestDispatcher rd=request.getRequestDispatcher("Exit.jsp");
            rd.include(request, response);
            
            
        } catch (Exception ex) 
        {
            PrintWriter out=response.getWriter();
              out.print(ex); 

        }
                
        
        
    
    }
    
}

    