package com.kharus.view;

import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.kharus.biz.record.RecordVO;

@Controller
public class RecordController
{
	@RequestMapping("/getHuntRecord.do")
	public ModelAndView getHuntRecord(RecordVO vo, Model model)
	{
		ModelAndView mav=new ModelAndView();
		List<RecordVO> recordList = new ArrayList<RecordVO>();
		
		String[] NickNames=vo.getNickName().split("\\r?\\n");
		
		for(int i=0;i<NickNames.length;i++)
		{
			RecordVO vo2 = new RecordVO();
			vo2.setNickName(NickNames[i]);
			if(vo.getNickName()==null)
			{
				throw new IllegalArgumentException("공백이 있으면 전적분석이 안됩니다.");
			}
			
			try
			{
				String nickname = URLEncoder.encode(vo2.getNickName(), "UTF-8"); //주소창에 들어갈 닉네임 변환
				Document doc = Jsoup.connect("http://kharus.com/character/view/"+nickname).get(); //크롤링
				
				String records = doc.select("td").eq(1).text();
				int idx2 = records.indexOf("전");
				vo2.setRecord(records.substring(0, idx2));
			}
			catch (Exception e)
			{
				e.printStackTrace();
			}
			recordList.add(vo2);
		}
		mav.addObject("recordList", recordList);
		mav.setViewName("recordExcel");
		
		return mav;
	}
	
	@RequestMapping("/record.do")
	public String redirectRecord(HttpSession session)
	{
		if(session.getAttribute("country")==null)
		{
			throw new IllegalArgumentException("권한이 없습니다.");
		}
		
		return "record";
	}
}