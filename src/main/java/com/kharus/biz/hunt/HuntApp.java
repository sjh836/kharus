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
			//�ּ�â�� �� �г��� ��ȯ
			str = URLEncoder.encode(str, "UTF-8");
			
			//ũ�Ѹ�
			Document doc = Jsoup.connect("http://kharus.com/character/view/"+str).get();
			
			str = URLDecoder.decode(str, "UTF-8");//�г��� ��ȯ�� �� �ٽ� �ѱ�(UTF-8����)��
			System.out.printf("%s\t", str);

			//������ ���
			String records = doc.select("td").eq(1).text();
			int idx2 = records.indexOf("��");
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