package demo;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by VICTOR on 04.04.2015.
 */
public class CountRedirect extends HttpServlet {
    private  static int cout =0;
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        cout++;
        req.setAttribute("current_count", cout);
        req.getRequestDispatcher("indexCount.jsp").forward(req,resp);
    }
}
