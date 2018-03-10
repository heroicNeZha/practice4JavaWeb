package web;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/12/31.
 */
@WebServlet(name = "JSTLSupportServlet")
public class JSTLSupportServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<Integer,String> movieMap = new HashMap<Integer,String>() {{
            put(1,"芳华");
            put(2,"妖零零");
            put(3,"前任3:再见前任");
        }};
        request.setAttribute("movieMap",movieMap);

        RequestDispatcher view = request.getRequestDispatcher("practice\\JSTLTest.jsp");
        view.forward(request,response);
    }
}
