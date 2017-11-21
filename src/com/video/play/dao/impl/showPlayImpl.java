package com.video.play.dao.impl;

import java.util.List;

import com.entity.tb_shiping;
import com.video.play.dao.showPlay;


public  class showPlayImpl implements showPlay {
    
	@Override
	public List<tb_shiping> findAllVodeoByid(int id) throws Exception {
		String sql="select * from tb_shiping where id=?";
		List<tb_shiping> list= com.untils.BaseDao.query(sql,tb_shiping.class,id);
		return null;
	}
}
