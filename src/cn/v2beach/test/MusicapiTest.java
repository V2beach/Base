package cn.v2beach.test;

import org.json.JSONObject;
import cn.v2beach.utility.*;

public class MusicapiTest {
	public static void main(String []args) {
		MusicapiUtil musicapiUtil=new MusicapiUtil();
        JSONObject json = musicapiUtil.loadJSON("地球仪");
        System.out.println("ID of song:"+//Get the id of song
        	json.getJSONObject("data").getJSONArray("songs").getJSONObject(0).getInt("id"));
        MusicUtil musicUtil=new MusicUtil();
        System.out.println(musicUtil.getMusicAddress("地球仪"));
	}
	/*
        JSONObject jsonObject = new JSONObject(jsonData);
        //通过迭代器获得json当中所有的key值
        Iterator keys = jsonObject.keys();
        //然后通过循环遍历出的key值
        while (keys.hasNext()){
            String key = String.valueOf(keys.next());
            //通过通过刚刚得到的key值去解析后面的json了
        }
	 */
}
