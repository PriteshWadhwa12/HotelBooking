/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pritesh;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginServlet extends HttpServlet { 
      Connection con;
      Statement stmt;
      PreparedStatement stat;
      ResultSet rs;
      
         protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
         response.setContentType("text/html;charset=UTF-8");
            ServletContext context=getServletContext();
            PrintWriter out=response.getWriter();
            try
            {
            String userid=request.getParameter("Userid");
            String password=request.getParameter("password");
            String DriverName=context.getInitParameter("Driver");
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String Database=context.getInitParameter("Database");
            con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=HotelManagement;user=sa;password=wadhwas");
            stat=con.prepareStatement("select UserId,Password from Register where UserId=? and Password=?");
            stat.setString(1, userid);
             stat.setString(2, password);
             rs=stat.executeQuery();
                
             if(rs.next())
             {
                 
                HttpSession session=request.getSession(true);
                session.setAttribute("username", userid);
                response.sendRedirect("Welcome.jsp");
                out.print("<h1>Hello</h1>"+userid);
                   

                 
              
             }
             else
             {
                 RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
                 rd.forward(request, response);
             }
            }catch(Exception ex)
            {
              out.println(ex.getMessage());
            }
         
    }
}
