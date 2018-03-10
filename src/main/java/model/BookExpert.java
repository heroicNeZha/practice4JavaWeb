package model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2017/11/28.
 */
public class BookExpert {
    public List bookRecommend(String bookType){
        List books = new ArrayList<String>();
        switch (bookType){
            case "html":books.add("Head First HTML And CSS");break;
            case "java":books.add("Head First Java");break;
            case "linux":books.add("鸟哥的Linux私房菜");break;
            default:books.add("选择有误!");break;
        }
        return books;
    }
}
