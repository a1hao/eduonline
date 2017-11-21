package com.video.show.dao.impl;
import java.util.List;

import com.entity.tb_shiping;
import com.video.show.dao.showVideo;


public class showVideoImpl implements showVideo {
    
	@Override
	public List<tb_shiping> findAllVodeo() throws Exception {
		String sql="select * from tb_shiping ";
		
		System.out.println("执行到到dao中");
		List<tb_shiping> list= com.untils.BaseDao.query(sql,tb_shiping.class);
		String i=list.get(0).getTexttitle();
		System.out.println(i);
		return  list;
	}


}
