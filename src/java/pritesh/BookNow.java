/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pritesh;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BookNow extends HttpServlet {

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        HttpSession session=request.getSession();
        PrintWriter out=response.getWriter();
        String uname=(String) session.getAttribute("username");
        out.println(uname);
        String id=request.getParameter("Id");
            String name=request.getParameter("name");
            String price=request.getParameter("Price");
            String image=request.getParameter("image");
            out.println(id);
            out.println(name);
            out.println(image);
            out.println(price);
            
         
        }
    }

