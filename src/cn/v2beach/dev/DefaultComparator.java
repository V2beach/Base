package cn.v2beach.dev;

import java.util.Comparator;

public class DefaultComparator implements Comparator<Object> {
	@Override
	public int compare(Object arg0, Object arg1) {
		return 1; //Time order.
	}
}
