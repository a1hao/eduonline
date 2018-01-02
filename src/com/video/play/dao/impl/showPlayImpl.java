package com.video.play.dao.impl;

import java.util.List;

import com.entity.tb_pingjia;
import com.entity.tb_shiping;
import com.untils.pingjia;
import com.video.play.dao.showPlay;
import com.entity.tb_shoucang;


public  class showPlayImpl implements showPlay {
    
	@Override
	public List<tb_shiping> findAllVodeoByid(int id) throws Exception {
		String sql="select * from tb_shiping where id=?";
		
		return com.untils.BaseDao.query(sql,tb_shiping.class,id);
	}

	@Override
	//找到要播放的视频
	public List<tb_shiping> findVodeoByid(int id) throws Exception {
		// TODO Auto-generated method stub
		String sql="select * from tb_shiping where shibian=?";
		List<tb_shiping> list= com.untils.BaseDao.query(sql,tb_shiping.class,id);
		return list;
	}

	@Override
	//找到要播放的视频的评价列表
	public List<pingjia> findPingJiaByid(int id) throws Exception {
		// TODO Auto-generated method stub
		String sql="select b.name,b.id,pingjia from tb_pingjia a LEFT JOIN tb_user b ON a.id =b.id WHERE shibian=?";
		List<pingjia> list= com.untils.BaseDao.query(sql,pingjia.class,id);
		return list;
	}

	@Override
	public int isShoucang(String userinfo, String shibian) throws Exception {
		// TODO Auto-generated method stub
		String sql="SELECT * FROM tb_shoucang WHERE shibian = ? AND NAME=?";
		List<tb_shoucang> list=com.untils.BaseDao.query(sql, tb_shoucang.class, shibian,userinfo);
		if(list.size()>0){
			return 1;	
		}else{
		
		return 0;
		}
	}
}
