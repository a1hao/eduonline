package com.video.show.service.impl;

import java.util.List;

import com.entity.tb_shiping;
import com.video.show.dao.showVideo;
import com.video.show.dao.impl.showVideoImpl;
import com.video.show.service.showVideoService;


public class showVideoServiceImpl implements showVideoService {
    showVideo dao;
    public showVideoServiceImpl(){
    	dao=new showVideoImpl();
    }
	@Override
	public List<tb_shiping> findAddVideo() {
		try {
		return dao.findAllVodeo();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		return null;
	}
}
