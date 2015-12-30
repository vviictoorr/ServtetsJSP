package demo.Filter;

import java.io.*;
import javax.servlet.*;

public class CheckingTotalResponseTimeFilter implements Filter {
    static int count = 0;

    public void init(FilterConfig arg0) throws ServletException {
    }

    public void doFilter(ServletRequest req, ServletResponse res,
                         FilterChain chain) throws IOException, ServletException {

        PrintWriter out = res.getWriter();
        long before = System.currentTimeMillis();

        chain.doFilter(req, res);

        long after = System.currentTimeMillis();
        out.print("<br/>Total response time " + (after - before) + " miliseconds");
        out.close();

    }

    public void destroy() {
    }
}
