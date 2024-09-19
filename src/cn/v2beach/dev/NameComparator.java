package cn.v2beach.dev;

import java.util.Comparator;

public class NameComparator implements Comparator<Object> {
	Integer index=0;
	@Override
	public int compare(Object o1, Object o2) {
		if (!(o1 instanceof Student))
			throw new RuntimeException("前者不是信息对象！");
		if (!(o2 instanceof Student))
			throw new RuntimeException("后者不是信息对象！");
		
		Student stu1=(Student) o1;
		Student stu2=(Student) o2;
		if (stu1.getStucode().equals(stu2.getStucode()))
			return 0;
		Integer len1 = stu1.getStuname().length();
		Integer len2 = stu2.getStuname().length();
		
        int lim = Math.min(len1, len2);
        for (int index = 0; index < lim; index++) {
            char c1 = stu1.getStuname().toUpperCase().charAt(index);
            char c2 = stu2.getStuname().toUpperCase().charAt(index);
            if (c1 != c2)
                return c1 - c2;
        }
        if (len1 - len2 == 0)
        	return 1;
        return len1 - len2;
	}
}
