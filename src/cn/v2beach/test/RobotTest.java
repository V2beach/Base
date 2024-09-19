package cn.v2beach.test;

import java.util.Scanner;

import cn.v2beach.utility.RobotUtil;

public class RobotTest {

    public static void main(String[] args) {
        //声明并实例化我们刚刚封装好的工具类
        RobotUtil util = new RobotUtil();
        String ch="早上好";
        //接收用户输入
        Scanner scanner = new Scanner(System.in);
        while (scanner.hasNext()){
            //直接输出机器人的回复
//        	System.out.println(System.getProperty("file.encoding"));
            System.err.println("Bot:" + util.getMessage(scanner.nextLine()));
        }
    }
}
