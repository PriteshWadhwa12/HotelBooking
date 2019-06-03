package pritesh;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class BookServlet extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
         response.setContentType("text/html;charset=UTF-8");
         String date1=request.getParameter("date1");    
         String  date2=request.getParameter("date2");    
         String id=request.getParameter("id1");
         String name=request.getParameter("nm1");
         int price=Integer.parseInt(request.getParameter("pr1"));
         String place=request.getParameter("pl1");
         String image=request.getParameter("image");
         String user=request.getParameter("userid");
         PrintWriter out=response.getWriter();
         
         HttpSession session=request.getSession(true);
         session.setAttribute("date1", date1);
         session.setAttribute("date2", date2);
         session.setAttribute("id", id);
         session.setAttribute("name", name);
         session.setAttribute("price", price);
         session.setAttribute("place", place);
         session.setAttribute("image", image);
         session.setAttribute("user", user);
       
        RequestDispatcher rd=request.getRequestDispatcher("book.jsp");
        rd.include(request, response);
       
    }
}

