package com.video.search.service.impl;

import java.util.List;
import com.video.search.dao.searchVideo;
import com.video.search.dao.impl.searchVideoDao;
import com.video.search.service.searchService;
import com.entity.tb_shiping;

public class searchServiceImpl implements searchService{
	searchVideo dao;
	    public searchServiceImpl(){
	    	dao=new searchVideoDao();
	    }
	@Override
	public List<tb_shiping> searchVideo(String keyword) {
		// TODO Auto-generated method stub
		try {
			return dao.searchVideo(keyword);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
