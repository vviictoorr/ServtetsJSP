package DevelepmentServlet.FetchPerformanceContextEvent;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

public class MyServlet1 extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        long before = System.currentTimeMillis();

        ServletContext context = getServletContext();
        List list = (List) context.getAttribute("data");

        for (Object aList : list) {
            User u = (User) aList;
            out.print("<br>" + u.getId() + " " + u.getName() + " " + u.getPassword());
        }

        long after = System.currentTimeMillis();
        out.print("<br>total time :" + (after - before));

        out.close();
    }

}
