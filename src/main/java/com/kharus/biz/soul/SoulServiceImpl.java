package com.kharus.biz.soul;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("soulService")
public class SoulServiceImpl implements SoulService
{
	@Autowired
	private SoulDAO soulDAO;

	public SoulVO getSoulList(SoulVO vo)
	{
		return soulDAO.getSoulList(vo);
	}
}
