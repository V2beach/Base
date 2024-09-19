package cn.v2beach.test;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.jexl2.Expression;
import org.apache.commons.jexl2.JexlContext;
import org.apache.commons.jexl2.JexlEngine;
import org.apache.commons.jexl2.MapContext;
import org.junit.Test;

public class EvalTest {
	
	private static JexlEngine jexlEngine = new JexlEngine();
	public static Object executeExpression(String jexlExpression, Map<String, Object> map) {
	    Expression expression = jexlEngine.createExpression(jexlExpression);
	    JexlContext context = new MapContext();
	    map.forEach(context::set);
	    return expression.evaluate(context);
	}

	@Test
	public void testStringFun() {
		
		Map<String, Object> map = new HashMap<>();
	    map.put("num", "0123456789");
	    String expression = "num.substring(2,6)";
	    //2345
	    System.out.println(executeExpression(expression, map));
	}
	
	public void testStringEmpty() {
		
		Map<String, Object> map = new HashMap<>();
	    map.put("name", "");
	    String expression = "(name==null||name==\"\")?\"无名\":name";
	    //无名
	    System.out.println(executeExpression(expression, map));
	}
	
	public void testArray() {
		
		Map<String, Object> map = new HashMap<>();
	    map.put("names", new String[] {"张三","李四","王五","赵六"});
	    String expression = "names[2]";
	    //王五
	    System.out.println(executeExpression(expression, map));
	    expression = "names.size()";
	    //4
	    System.out.println(executeExpression(expression, map));
	}
	

}
