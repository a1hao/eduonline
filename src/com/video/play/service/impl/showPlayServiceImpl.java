package com.video.play.service.impl;

import java.util.List;

import com.entity.tb_shiping;
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

}
