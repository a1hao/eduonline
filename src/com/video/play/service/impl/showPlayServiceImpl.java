package com.video.play.service.impl;

import java.util.List;

import com.entity.tb_pingjia;
import com.entity.tb_shiping;
import com.untils.pingjia;
import com.video.play.dao.showPlay;
import com.video.play.dao.impl.showPlayImpl;
import com.video.play.service.showPlayService;


public class showPlayServiceImpl implements showPlayService {
    showPlay dao;
    public showPlayServiceImpl(){
    	dao=new showPlayImpl();
    }
	@Override
	public List<tb_shiping> findAllVodeoByid(int id) {
		try {
			return dao.findAllVodeoByid(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Override
	//找到要播放的视频
	public List<tb_shiping> findVodeoByid(int id) {
		 try {
			 return dao.findVodeoByid(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return null;
	}
	@Override
	//找到要播放的视频的视频的评价列表
	public List<pingjia> findPingJiaByid(int id) {
		// TODO Auto-generated method stub
		try {
			return dao.findPingJiaByid(id);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public int isShoucang(String userinfo, String shibian) {
		// TODO Auto-generated method stub
		try {
			return dao.isShoucang(userinfo,shibian);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

}
