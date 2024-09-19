package cn.v2beach.test;

public class StrTest {
	public static void main(String args[]) {
		String msg="nickname\":\"V2beach0.6451150722319677\",\"content\":\"<p>请输入聊天信息...</p>";
		Integer begin=msg.indexOf("<p>");
		Integer end=msg.indexOf("</p>");
		String mString=msg.substring(begin+3,end);
		System.out.println(mString);
		System.out.println(Integer.parseInt("234"));
	}
}
