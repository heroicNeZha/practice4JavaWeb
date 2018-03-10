package web;

import model.BookExpert;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by Administrator on 2017/11/28.
 */
@WebServlet(name = "BookSelect")
public class BookSelect extends HttpServlet {

    private BookExpert expert;
    @Override
    public void init() throws ServletException {
        super.init();
        expert = new BookExpert();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        response.setContentType("text/html");
//        response.setHeader("charset","UTF-8");
//        PrintWriter writer = response.getWriter();
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
//        writer.println("测试汉字");
//        writer.println(response.getCharacterEncoding());
        List books = expert.bookRecommend(request.getParameter("bookType"));
        //request属性
        request.setAttribute("books",books);
        //如果响应以后提交会产生异常
        RequestDispatcher view = request.getRequestDispatcher("book\\BookShow.jsp");
        view.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
