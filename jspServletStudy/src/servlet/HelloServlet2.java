package servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/baz/*")
public class HelloServlet2 extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        
        PrintWriter out = response.getWriter();
        String reqUrl = request.getRequestURI();
        String mappingUrl = request.getServletPath();
        
        out.println("<html>");
        out.println("<head>");
        out.println("<title>HelloServlet2</title>");
        out.println("</head>");
        out.println("<body>");
        out.println("<h1>HelloServlet2입니다.</h1>");
        out.println("<h1>요청 경로는 " + reqUrl + "</h1>");
        out.println("<h1>맵핑 경로는 " + mappingUrl + "</h1>");
        out.println("</body>");
        out.println("</html>");
        out.close();
    }

}
