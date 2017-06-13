package com.kharus.biz.soul;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class SoulRowMapper implements RowMapper<SoulVO>
{
	@Override
	public SoulVO mapRow(ResultSet rs, int rowNum) throws SQLException
	{
		SoulVO soul=new SoulVO();
		soul.setNo(rs.getInt("NO"));
		soul.setPoetry(rs.getString("POETRY"));
		soul.setAttribute(rs.getString("ATTRIBUTE"));
		
		return soul;
	}
}