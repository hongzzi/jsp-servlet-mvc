package Controll;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.net.URLEncoder;
import java.util.ArrayList;

import org.springframework.stereotype.Service;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

import Model.Book;

@Service
public class KaKaoBookService {
	 
	 private static final String token = "3d7e2c6f4720867269313dc52f4d6bd7";
	 private static final String id  = "KakaoAK ";
	
	 private static final String API_SERVER_HOST  = "https://dapi.kakao.com";
	 
	 private static final String SEARCH_PATH  = "/v2/search/book";
	 
	 
	 public String getDetail(String category){
		String json = null;
		 
		 
		 
		 try {
	            URL url;
	            url = new URL(API_SERVER_HOST+SEARCH_PATH+"?query="+URLEncoder.encode("¼Ò¼³", "utf-8")+"&category="+category);
	            
	  
	            HttpURLConnection conn = (HttpURLConnection)url.openConnection();
	            conn.setRequestMethod("GET");
	            conn.setRequestProperty("Connection","Keep-Alive");
	            conn.setRequestProperty("Authorization", id + token);
	            
	            StringBuilder sb = new StringBuilder();
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(conn.getInputStream(), "UTF-8"));
                //String json;

                while ((json = bufferedReader.readLine()) != null) {
                    sb.append(json + "\n");
                }
                return  sb.toString().trim();
                
		 }catch(Exception e){
			 e.printStackTrace();
		 }
		 
		 return json;
	 }
	 
	 
}
