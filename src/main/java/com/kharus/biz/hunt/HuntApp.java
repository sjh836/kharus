package com.kharus.biz.hunt;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import java.io.BufferedReader;
import java.io.FileReader;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class HuntApp
{
	public static void main(String[] args)
	{
		BufferedReader br;
		
		try
		{
			br = new BufferedReader(new FileReader("C:/input.txt"));
			String str;

			while ((str = br.readLine()) != null)
			{
			//주소창에 들어갈 닉네임 변환
			str = URLEncoder.encode(str, "UTF-8");
			
			//크롤링
			Document doc = Jsoup.connect("http://kharus.com/character/view/"+str).get();
			
			str = URLDecoder.decode(str, "UTF-8");//닉네임 변환된 걸 다시 한글(UTF-8에서)로
			System.out.printf("%s\t", str);

			//전적수 출력
			String records = doc.select("td").eq(1).text();
			int idx2 = records.indexOf("전");
			records = records.substring(0, idx2);
			System.out.printf("%s\n", records);
			}
		} 
		catch (Exception e)
		{
			e.printStackTrace();
		}
	}
}