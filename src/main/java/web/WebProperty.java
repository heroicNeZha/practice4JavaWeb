package web;

import model.Dog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2017/11/30.
 *
 * 通过使用属性获取初始化参数
 */
@WebServlet(name = "WebProperty")
public class WebProperty extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //在web.xml中标识
        String MyGithub = getServletConfig().getInitParameter("MyGithub");
        String MyBlog = getServletContext().getInitParameter("MyBlog");
        response.setContentType("text/html");
        response.setCharacterEncoding("UTF-8");
        PrintWriter writer = response.getWriter();
        writer.println("测试汉字");
        writer.println("<p>init-param 里面藏的github为 <a href='"+MyGithub+"'>heriocNeZha</a></p>\n");
        writer.println("<p>context-param 里面藏的博客为 <a href='"+MyBlog+"'>LZW love HJ</a></p>\n");

        //使用监听器藏一直狗
        Dog dog = (Dog)getServletContext().getAttribute("dog");
        writer.println("<p>狗中的博客地址为:"+dog.getBlog()+"</p>");
    }
}
