package cn.v2beach.test;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;

import org.apache.commons.io.FileUtils;
import org.json.JSONObject;

public class JsonfileUtil {
    public static void main(String args[]) throws IOException {

//        File file=new File("D:\\Web\\Java\\Base\\src\\cn\\v2beach\\utility\\mejson.json");
//        String content= FileUtils.readFileToString(file,"UTF-8");
//        JSONObject jsonObject=new JSONObject(content);
//        System.out.println("姓名是："+jsonObject.getString("name"));
//        System.out.println("年龄："+jsonObject.getDouble("age"));
//        System.out.println("学到的技能："+jsonObject.getJSONArray("major"));
//        System.out.println("国家："+jsonObject.getJSONObject("Nativeplace").getString("country"));
    	loadJSON();
    }
    
	public static JSONObject loadJSON() {
    	String url="https://v1.itooi.cn/netease/search?keyword=%E5%9C%B0%E7%90%83%E4%BB%AA&type=song&pageSize=30&page=0";
    	try {
			String encodeUrl=URLEncoder.encode("地球仪", "utf-8");
			System.out.println(encodeUrl);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
    	URL urlObject;
		try {
			urlObject = new URL(url);
			URLConnection uc = urlObject.openConnection();
			byte[] byt = new byte[uc.getInputStream().available()];
			File file = new File("");
			OutputStream output = new FileOutputStream(file);
			BufferedOutputStream bufferedOutput = new BufferedOutputStream(output);
			bufferedOutput.write(byt);
			String content= FileUtils.readFileToString(file,"UTF-8");
	        JSONObject jsonObject=new JSONObject(content);
	        System.out.println("ID of song:"+jsonObject.getInt("id"));
		} catch (MalformedURLException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}  
       
    	return null;
    }
	/**
	 * 将inputStream转化为file
	 * @param is
	 * @param file 要输出的文件目录
	 */
	public static void inputStream2File(InputStream is, File file) throws IOException {
		OutputStream os = null;
		try {
			os = new FileOutputStream(file);
			int len = 0;
			byte[] buffer = new byte[8192];

			while ((len = is.read(buffer)) != -1) {
				os.write(buffer, 0, len);
			}
		} finally {
			os.close();
			is.close();
		}
	}

}