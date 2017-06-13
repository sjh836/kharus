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
	
	//회원 로그인
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	public String login(MemberVO vo, HttpSession session)
	{
		if(vo.getId()==null||vo.getId().equals(""))
		{
			throw new IllegalArgumentException("아이디는 반드시 입력해야 합니다");
		}
		MemberVO user=memberService.loginMember(vo);
		if(memberService.loginMember(vo)!=null)
		{
			session.setAttribute("userId", user.getId()); //아이디설정
			session.setAttribute("country", user.getCountry()); //국가설정
			
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
		//브라우저와 연결된 세션 객체를 강제 종료한다.
		session.invalidate();

		return "login";
	}
}