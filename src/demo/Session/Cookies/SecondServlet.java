package demo.Session.Cookies;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SecondServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) {
        try {

            response.setContentType("text/html");
            PrintWriter out = response.getWriter();

            Cookie ck[] = request.getCookies();
            out.print("Hello " + ck[0].getValue());

            for (int i = 0; i < ck.length; i++) {
                out.print("<br>" + ck[i].getName() + " " + ck[i].getValue());//printing name and value of cookie
            }
            out.close();

        } catch (Exception e) {
            System.out.println(e);
        }
    }


}
