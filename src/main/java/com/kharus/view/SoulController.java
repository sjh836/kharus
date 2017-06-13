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
	
	//�ù� ��� ��ȸ
	@RequestMapping("/getSoulList.do")
	public String getBoardList(SoulVO vo, Model model)
	{
		String[] poetrys=vo.getContent().split("\\r?\\n");

		for(int i=0;i<poetrys.length;i++)
		{
			vo.setPoetry(poetrys[i]);
			if(vo.getPoetry()==null)
			{
				throw new IllegalArgumentException("������ ������ �ؼ��� �ȵ˴ϴ�.");
			}
			model.addAttribute("soul"+Integer.toString(i), soulService.getSoulList(vo)); //Model���� ����
		}

		return "getSoulList";
	}
}