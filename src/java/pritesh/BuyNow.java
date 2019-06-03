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
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class BuyNow extends HttpServlet {
      Connection con;
      Statement stmt;
      PreparedStatement stat;
      ResultSet rs;
     
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out=response.getWriter();
        try
        {
            HttpSession session=request.getSession();
            ServletContext context=getServletContext();
            int id=Integer.parseInt(request.getParameter("Id"));
            String image=request.getParameter("image");
            String name=request.getParameter("name");
            int price=Integer.parseInt(request.getParameter("Price"));
            int quantity=Integer.parseInt(request.getParameter("quantity"));
            String uname=(String)session.getAttribute("username");
            
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String Database=context.getInitParameter("Database");
            con=DriverManager.getConnection("jdbc:sqlserver://localhost;databaseName=HotelManagement;user=sa;password=wadhwas");
             
            stat=con.prepareStatement("insert into Food_Table1 values(?,?,?,?,?,?)");
            stat.setInt(1, id);
            stat.setString(2, image);
            stat.setString(3, name);
            stat.setInt(4, price);
            stat.setInt(5,quantity);
            stat.setString(6,uname);
            stat.executeUpdate();
            
            
        }
        catch(Exception ex)
        {
            out.print(ex);
            out.print("Error");
        }
    }
    



}
