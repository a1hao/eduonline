package com.user.manager.service.impl;

import java.util.List;

import com.entity.tb_shoucang;
import com.user.manager.dao.ShoucangVideo;
import com.user.manager.dao.impl.ShoucangVideoImpl;
import com.user.manager.service.ShoucangVideoService;
import com.video.show.dao.showVideo;
import com.video.show.dao.impl.showVideoImpl;

public class ShoucangVideoServiceimpl implements ShoucangVideoService{
	ShoucangVideo dao;
	    public ShoucangVideoServiceimpl(){
	    	dao=new ShoucangVideoImpl();
	    }
	@Override
	public int shoucangVideo(String shibian, String userinfo) {
		// TODO Auto-generated method stub
		try {
			return dao.shoucangVideo(shibian,userinfo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}
	@Override
	public List<tb_shoucang> findShipingNameBy(String userinfo) {
		// TODO Auto-generated method stub
		 try {
		 return	dao.findShipingNameBy(userinfo);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public int deleteShoucang(String shibian,String name) {
		// TODO Auto-generated method stub
		try {
			return dao.deleteShoucang(shibian,name);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

}
