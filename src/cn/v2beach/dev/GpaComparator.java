package cn.v2beach.dev;

import java.util.Comparator;

public class GpaComparator implements Comparator<Object> {
	@Override
	public int compare(Object o1, Object o2) {
		if (!(o1 instanceof Student))
			throw new RuntimeException("前者不是信息对象！");
		if (!(o2 instanceof Student))
			throw new RuntimeException("后者不是信息对象！");
		
		Student stu1=(Student) o1;
		Student stu2=(Student) o2;
		double code1=Double.parseDouble(stu1.getStugpa());
		double code2=Double.parseDouble(stu2.getStugpa());
		if (code1>code2)
			return 1;
		else if (code1<code2)
			return -1;
		return 1;
	}
}
