package cn.v2beach.test;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;

import org.json.JSONObject;
 
/**
 * @author lijinnan
 * @date:2013-11-11 下午6:12:26  
 */
public class HttpJSONTest {
 
    /**
     * @param args
     */
    public static void main(String[] args) {
        String url = "https://v1.itooi.cn/netease/search?keyword=%E5%9C%B0%E7%90%83%E4%BB%AA&type=song&pageSize=30&page=0";
        JSONObject json = loadJSON(url);
        System.out.println("ID of song:"+json.getJSONObject("data").getJSONArray("songs").getJSONObject(0).getInt("id"));
    }
 
    public static JSONObject loadJSON (String url) {
        StringBuilder json = new StringBuilder();
        try {
            URL oracle = new URL(url);
            URLConnection yc = oracle.openConnection();
            BufferedReader in = new BufferedReader(new InputStreamReader(
                                        yc.getInputStream()));
            String inputLine = null;
            while ( (inputLine = in.readLine()) != null) {
                json.append(inputLine);
            }
            in.close();
        } catch (MalformedURLException e) {
        } catch (IOException e) {
        }
        JSONObject jsonObject=new JSONObject(json.toString());
        return jsonObject;
    }
}