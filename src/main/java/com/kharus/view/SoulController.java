package com.kharus.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kharus.biz.soul.SoulService;
import com.kharus.biz.soul.SoulVO;

@Controller
public class SoulController
{
	@Autowired
	private SoulService soulService;
	
	//시문 목록 조회
	@RequestMapping("/getSoulList.do")
	public String getBoardList(SoulVO vo, Model model)
	{
		String[] poetrys=vo.getContent().split("\\r?\\n");

		for(int i=0;i<poetrys.length;i++)
		{
			vo.setPoetry(poetrys[i]);
			if(vo.getPoetry()==null)
			{
				throw new IllegalArgumentException("공백이 있으면 해석이 안됩니다.");
			}
			model.addAttribute("soul"+Integer.toString(i), soulService.getSoulList(vo)); //Model정보 저장
		}

		return "getSoulList";
	}
}