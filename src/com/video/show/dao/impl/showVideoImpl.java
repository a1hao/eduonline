package com.video.show.dao.impl;
import java.util.List;

import com.entity.tb_shiping;
import com.entity.tb_type;
import com.entity.tb_user;
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

	@Override
	//找到推荐视频
	public List<tb_shiping> findRecommendVideo() throws Exception {
		// TODO Auto-generated method stub
		String sql="select * from tb_shiping where ok>100 ";
		List<tb_shiping> list= com.untils.BaseDao.query(sql,tb_shiping.class);
		return  list;
	}

	@Override
	//找到免费视频
	public List<tb_shiping> findFreeVideo() throws Exception {
		// TODO Auto-generated method stub
		String sql="select * from tb_shiping where Members=0 LIMIT 0,4";
		List<tb_shiping> list= com.untils.BaseDao.query(sql,tb_shiping.class);
		return  list;
	}

	@Override
	//r通过名字找到id
	public int findIdByName(String name) throws Exception {
		String sql="select * from tb_user where name=?";
		List<tb_user> list= com.untils.BaseDao.query(sql,tb_user.class,name);
		return list.get(0).getId();
	}

	@Override
	//评论功能
	public int insertComment(int id, int shibian, String text) throws Exception {
		// TODO Auto-generated method stub
		String sql="INSERT tb_pingjia(id,shibian,pingjia) VALUE(?,?,?)";
		return com.untils.BaseDao.update(sql, id,shibian,text);
	}

	@Override
	//根据tid找到视频
	public List<tb_shiping> findVideoByTid(int a1) throws Exception {
		// TODO Auto-generated method stub
		String sql="select * from tb_shiping where tid=?";
		List<tb_shiping> list= com.untils.BaseDao.query(sql,tb_shiping.class,a1);
		return list;
	}

	@Override
	public List<tb_type> findTypeBytid(int i) throws Exception {
		// TODO Auto-generated method stub
		String sql="select * from tb_type where tid=?";
		return com.untils.BaseDao.query(sql,tb_type.class,i);
	}


}
