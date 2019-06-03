package pritesh;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
public class SemiFinal extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
            PrintWriter out=response.getWriter();
        String Address=request.getParameter("address");
        String email=request.getParameter("emailAdd");
        String FName=request.getParameter("Fname");
        long mobile=Long.parseLong(request.getParameter("phoneNo"));
        
        
        HttpSession session=request.getSession();
        session.setAttribute("address", Address);
        session.setAttribute("fName",FName);
        session.setAttribute("mobile2", mobile);
        session.setAttribute("email2", email);
        String date1=(String)session.getAttribute("date1");
        String date2=(String)session.getAttribute("date2");
        int price=(Integer)session.getAttribute("price");
        Date CIdate = new SimpleDateFormat("dd/MM/yyyy").parse(date1);
        Date COdate=new SimpleDateFormat("dd/MM/yyyy").parse(date2);
            int differnce=COdate.getDate() - CIdate.getDate();
            long calc=differnce*price;
            session.setAttribute("NumDays", differnce);
            session.setAttribute("Calc", calc);
            RequestDispatcher rd=request.getRequestDispatcher("Billing.jsp");
            rd.include(request, response);
        }
        catch(Exception ex)
        {
            PrintWriter out=response.getWriter();
            out.print(ex);
        }
        
    }


}
