package model;

/**
 * Created by Administrator on 2017/12/16.
 */
public class Counter {
    private static int count;
    public static synchronized int getCount(){
        count++;
        return count;
    }
}
