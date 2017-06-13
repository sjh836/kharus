package com.kharus.biz.member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.kharus.biz.common.JDBCUtil;

@Repository
public class MemberDAO
{
	//JDBC 관련 변수
	private Connection conn=null;
	private PreparedStatement stmt=null;
	private ResultSet rs=null;
	
	//SQL명령어들
	private final String USER_LOGIN="select * from member where id=? and password=?";
		
	//CRUD기능
	//회원 로그인
	public MemberVO loginMember(MemberVO vo)
	{
		System.out.println("[Model] loginMember() 기능 처리");
		MemberVO member=null;
		try
		{
			conn=JDBCUtil.getConnection();
			stmt=conn.prepareStatement(USER_LOGIN);
			stmt.setString(1, vo.getId());
			stmt.setString(2, vo.getPassword());
			rs=stmt.executeQuery();
			if(rs.next())
			{
				member=new MemberVO();
				member.setMno(rs.getInt("MNO"));
				member.setId(rs.getString("ID"));
				member.setPassword(rs.getString("PASSWORD"));
				member.setCountry(rs.getString("COUNTRY"));
			}
		}
		catch (Exception e)
		{
			e.printStackTrace();
		}
		finally
		{
			JDBCUtil.close(rs, stmt, conn);
		}
		return member;
	}
}
