package web;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import model.Dog;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/12/23.
 */
@WebServlet(name = "JSONTest")
public class JSONTest extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Dog dog = (Dog) getServletContext().getAttribute("dog");
        response.setContentType("text/json");
        String jsonObject1 = JSONObject.toJSONString(dog);
        PrintWriter out = response.getWriter();
        out.println(jsonObject1);

        List<Dog> dogs = new ArrayList<Dog>();
        dogs.add((Dog) getServletContext().getAttribute("dog"));
        response.setContentType("text/json");
        String jsonArray2 = JSONArray.toJSONString(dogs);
        out.println(jsonArray2);

        JSONObject jo = new JSONObject();
        jo.put("Dog",jsonObject1);
        jo.put("Many Dogs",jsonArray2);
        out.println(jo.toString());
    }
}
