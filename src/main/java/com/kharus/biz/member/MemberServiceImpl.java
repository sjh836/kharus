package com.kharus.biz.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("memberService")
public class MemberServiceImpl implements MemberService
{
	@Autowired
	private MemberDAO memberDAO;
	
	public MemberVO loginMember(MemberVO vo)
	{
		return memberDAO.loginMember(vo);
	}
}
