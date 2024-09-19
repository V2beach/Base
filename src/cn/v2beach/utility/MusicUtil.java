package cn.v2beach.utility;

import org.json.JSONObject;

public class MusicUtil {
	
	cn.v2beach.utility.MusicapiUtil musicapiUtil=new MusicapiUtil();
	public Integer getMusicId(JSONObject jsonObject) {
		System.out.println(jsonObject.toString());
		return jsonObject.getJSONObject("data").getJSONArray("songs").getJSONObject(0).getInt("id");
	}
	public String getMusicAddress(String str) {
		Integer id=getMusicId(musicapiUtil.loadJSON(str));
		return "https://v1.itooi.cn/netease/url?id="+id+"&quality=flac";
	}
	
}
