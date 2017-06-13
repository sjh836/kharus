package com.kharus.biz.soul;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class SoulDAO
{
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	//SQL명령어들
	private final String SOUL_GET="select * from soul where poetry=?";
	
	//CRUD기능
	//시문조회
	public SoulVO getSoulList(SoulVO vo)
	{
		Object[] args={vo.getPoetry()};
		
		return jdbcTemplate.queryForObject(SOUL_GET, args, new SoulRowMapper());
	}
}
