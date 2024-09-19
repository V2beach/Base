package cn.v2beach.test;

import java.util.Iterator;
import java.util.Set;

import cn.v2beach.dbhelper.MusicListDao;
import cn.v2beach.model.Music;

public class MusicServletTest {
	public static void main(String args[]) {
		MusicListDao musicListDao=new MusicListDao();
		//musicListDao.addUncompleted(1, "If you want me", "V2beach", "1970/01/01 00:00:01");
		//musicListDao.addCompleted(1, "If you want me", "V2beach", "1970/01/01 00:00:01");
		//musicListDao.delUncompleted(1, "If you want me");
		Set<Music> set=musicListDao.searchUncompleted();
		Iterator<Music> it=set.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
		}
//		System.out.println(musicListDao.searchUncompleted());
	}
}
