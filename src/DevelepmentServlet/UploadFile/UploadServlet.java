package DevelepmentServlet.UploadFile;

        import com.oreilly.servlet.MultipartRequest;

        import javax.servlet.ServletException;
        import javax.servlet.http.HttpServlet;
        import javax.servlet.http.HttpServletRequest;
        import javax.servlet.http.HttpServletResponse;
        import java.io.IOException;
        import java.io.PrintWriter;

public class UploadServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        MultipartRequest m = new MultipartRequest(request, "e:\\Java\\");
        out.print("successfully uploaded");
    }
}
