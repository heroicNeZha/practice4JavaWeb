package web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

/**
 * Created by Administrator on 2017/11/28.
 */
public class HTTPHeadPractice extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setContentType("text/html");
        //修改UTF-8在获取writer之前
        response.setCharacterEncoding("UTF-8");
        PrintWriter writer = response.getWriter();
        Enumeration<String> enume = request.getHeaderNames();
        while(enume.hasMoreElements()){
            String header = enume.nextElement();
            writer.println(header+"="+request.getHeader(header)+"<br>");
        }
        writer.println("测试汉字");
    }
}
