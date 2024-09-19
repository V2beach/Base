package cn.v2beach.chat;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Vector;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.websocket.OnClose;
import javax.websocket.OnError;
import javax.websocket.OnMessage;
import javax.websocket.OnOpen;
import javax.websocket.Session;
import javax.websocket.server.ServerEndpoint;

import cn.v2beach.utility.RobotUtil;
import net.sf.json.JSONObject;

@ServerEndpoint("/websocket")
public class ChatServer {

	String message=null;
	
	private static SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	private static Vector<Session> room = new Vector<Session>();
	
	/**
	 * 用户接入
	 * @Param session 可选
	 */
	@OnOpen
	public void onOpen(Session session){
		room.addElement(session);
	}
	
	/**
	 * 接收到来自用户的消息
	 * @Param message
	 * @Param session
	 */
	@OnMessage
	public void onMessage(String message,Session session){
		Pattern pattern=Pattern.compile("Robot");
		Matcher matcher=pattern.matcher(message);
		if (!matcher.find()) {
			//把用户发来的消息解析为JSON对象
			JSONObject obj = JSONObject.fromObject(message);
			System.out.println(message);
			//向JSON对象中添加发送时间
			obj.put("date", df.format(new Date()));
			//遍历聊天室中的所有会话
			for(Session se : room){
				//设置消息是否为自己的
				obj.put("isSelf", se.equals(session));
				//发送消息给远程用户
				se.getAsyncRemote().sendText(obj.toString());
				System.out.println("not robot"+obj.toString());
			}
		}
		else {
			Integer begin=message.indexOf("<p>")+3;
			Integer end=message.indexOf("</p>");
			String msg=message.substring(begin, end);
			RobotUtil util = new RobotUtil();
			String reMsg=util.getMessage(msg);
			this.message=reMsg;
			System.out.println(msg);
			System.out.println(reMsg);
			message=message.replace(msg, reMsg);
			JSONObject obj = JSONObject.fromObject(message);
			obj.put("date", df.format(new Date()));
			for(Session se : room){
				obj.put("isSelf", false);
				se.getAsyncRemote().sendText(obj.toString());
				System.out.println("robot"+obj.toString());
			}
		}
	}
	
	/**
	 * 用户断开
	 * @Param session
	 */
	@OnClose
	public void onClose(Session session){
		room.remove(session);
	}
	
	/**
	 * 用户连接异常
	 * @Param t
	 */
	@OnError
	public void onError(Throwable t){
		
	}

}
