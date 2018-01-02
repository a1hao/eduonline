package com.video.search.dao.impl;

import java.util.List;

import com.entity.tb_shiping;
import com.video.search.dao.searchVideo;

public class searchVideoDao implements searchVideo{

	@Override
	public  List<tb_shiping> searchVideo(String keyword) throws Exception {
		String sql="select * from tb_shiping  where texttitle like ? or text like ?";
		return com.untils.BaseDao.query(sql,tb_shiping.class,'%'+keyword+'%','%'+keyword+'%');
	}

}
