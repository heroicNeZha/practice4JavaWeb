package web;


import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Administrator on 2018/2/19.
 */
@WebServlet(name = "AjaxServlet")
public class AjaxServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        JSONObject Jobject = new JSONObject();
        JSONArray Jarray = new JSONArray();

        addToArray(Jarray,"lzw","male",name);
        addToArray(Jarray,"hj","female",name);

        Jobject.put("people",Jarray);

        PrintWriter out = response.getWriter();
        out.println(Jobject);
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }

    void addToArray(JSONArray array, String name, String sex, String trueName){
        JSONObject temp=new JSONObject();
        temp.put("name", name);
        temp.put("sex", sex);
        if(trueName.equals(temp.getString("name")))
            array.add(temp);
    }
}
