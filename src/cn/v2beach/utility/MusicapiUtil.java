package cn.v2beach.utility;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import org.json.JSONObject;

public class MusicapiUtil {
    public JSONObject loadJSON (String unicodeStr) {
    	String encodeUrl="";
    	try {
    		encodeUrl=URLEncoder.encode(unicodeStr, "utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
        String url = "https://v1.itooi.cn/netease/search?keyword="+encodeUrl+"&type=song&pageSize=10&page=0";
        StringBuilder json = new StringBuilder();
        try {
            URL UniformResourceLocator = new URL(url);
            URLConnection uc = UniformResourceLocator.openConnection();
            BufferedReader in = new BufferedReader(new InputStreamReader(uc.getInputStream()));
            String inputaLine = null;
            while ( (inputaLine = in.readLine()) != null)
                json.append(inputaLine);
            in.close();
        } catch (MalformedURLException e) {
        	e.getStackTrace();
        } catch (IOException e) {
        	e.getStackTrace();
        }
        JSONObject jsonObject=new JSONObject(json.toString()) ;//Genius~"{"+json.toString()+"}"
        return jsonObject;
    }
}