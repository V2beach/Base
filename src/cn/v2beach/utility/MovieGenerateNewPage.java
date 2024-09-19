package cn.v2beach.utility;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.Iterator;
import java.util.Set;

import org.graalvm.compiler.options.ModifiableOptionValues;

import cn.v2beach.dbhelper.MovieListDao;
import cn.v2beach.model.Movie;

public class MovieGenerateNewPage {
	
	public static void main(String[] args) {
		String path = System.getProperty("user.dir");
		System.out.println(path);
        String filePath = path + "/WebContent/V2beach1024/Views-JavaServerPages/Movie_Pages/ATEMPLATE.jsp";
        String disrPath = path + "/WebContent/V2beach1024/Views-JavaServerPages/Movie_Pages/";

        MovieListDao movieListDao = new MovieListDao();
        Set<Movie> movieSet = movieListDao.getLatestMoives(-1);
		Iterator<Movie> iterator = movieSet.iterator();
		MovieGenerateNewPage movieGenerateNewPage = new MovieGenerateNewPage();
		Movie movie = null;
		int count = 1;
		while (iterator.hasNext()) {
			movie = iterator.next();
			String fileName = "Movie_Page" + count;
			movieGenerateNewPage.makeJsp(filePath, disrPath, fileName, movie);
			count++;
		}
    }
    /**
     * @Title: MakeHtml 
     * @Description: 创建html
     * @param    filePath 设定模板文件
     * @param    imagePath 需要显示图片的路径
     * @param    disrPath  生成html的存放路径
     * @param    fileName  生成html名字
     * @return void    返回类型 
     * @throws
     */
    public void makeJsp(String filePath,String disrPath,String fileName,Movie movie){
        try {
            
            System.out.print(filePath);
            String templateContent = "";
            FileInputStream fileinputstream = new FileInputStream(filePath);// 读取模板文件
            int lenght = fileinputstream.available();
            
            byte bytes[] = new byte[lenght];
            fileinputstream.read(bytes);
            fileinputstream.close();
            
            templateContent = new String(bytes);

            String moviename = movie.getMoviename();
            templateContent = templateContent.replaceAll("###moviename###", moviename);
            
            String actor = movie.getActor();
            templateContent = templateContent.replaceAll("###actor###", actor);
            
            String category = movie.getCategory();
            templateContent = templateContent.replaceAll("###category###", category);
            
            String country = movie.getCountry();
            templateContent = templateContent.replaceAll("###country###", country);
            
            String director = movie.getDirector();
            templateContent = templateContent.replaceAll("###director###", director);
            
            String douban = movie.getDouban();
            templateContent = templateContent.replaceAll("###douban###", douban);
            
            String download = movie.getDownload();
            templateContent = templateContent.replaceAll("###download###", download);
            
            String duration = movie.getDuration();
            templateContent = templateContent.replaceAll("###duration###", duration);
            
            String imdbrate = movie.getImdbrate();
            templateContent = templateContent.replaceAll("###imdbrate###", imdbrate);
            
            String intro = movie.getIntro();
            templateContent = templateContent.replaceAll("###intro###", intro);
            
            String language = movie.getLanguage();
            templateContent = templateContent.replaceAll("###language###", language);
            
            String publishdate = movie.getPublishdate();
            templateContent = templateContent.replaceAll("###publishdate###", publishdate);
            
            String fileame = fileName + ".jsp";
            fileame = disrPath+"/" + fileame;// 生成的html文件保存路径。
            FileOutputStream fileoutputstream = new FileOutputStream(fileame);// 建立文件输出流
//            System.out.print("文件输出路径:");
//            System.out.print(fileame);
            byte tag_bytes[] = templateContent.getBytes();
            fileoutputstream.write(tag_bytes);
            fileoutputstream.close();
        } catch (Exception e) {
            System.out.print(e.toString());
        }
    }
}
