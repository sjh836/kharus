package com.kharus.view;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.kharus.biz.member.MemberService;
import com.kharus.biz.member.MemberVO;

@Controller
@SessionAttributes("member")
public class MemberController
{
	@Autowired
	private MemberService memberService;
	
	//ȸ�� �α���
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session)
	{
		if(vo.getId()==null||vo.getId().equals(""))
		{
			throw new IllegalArgumentException("���̵�� �ݵ�� �Է��ؾ� �մϴ�");
		}
		MemberVO user=memberService.loginMember(vo);
		if(memberService.loginMember(vo)!=null)
		{
			session.setAttribute("userId", user.getId()); //���̵���
			session.setAttribute("country", user.getCountry()); //��������
			
			return "record";
		}
		else
		{
			return "login";
		}
	}
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) throws Exception
	{
		//�������� ����� ���� ��ü�� ���� �����Ѵ�.
		session.invalidate();

		return "login";
	}
}