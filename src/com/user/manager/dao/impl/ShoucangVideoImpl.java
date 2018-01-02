package com.user.manager.dao.impl;

import java.util.List;

import com.entity.tb_shiping;
import com.entity.tb_shoucang;
import com.user.manager.dao.ShoucangVideo;

public class ShoucangVideoImpl implements ShoucangVideo {

	@Override
	public int shoucangVideo(String shibian, String userinfo) throws Exception {
		// TODO Auto-generated method stub
		String sql="insert into tb_shoucang(NAME,shibian)values(?,?)";
		return com.untils.BaseDao.update(sql, userinfo,shibian);
	}

	@Override
	public List<tb_shoucang> findShipingNameBy(String userinfo) throws Exception {
		// TODO Auto-generated method stub
		String sql="select * from tb_shoucang where name=?";
		return com.untils.BaseDao.query(sql, tb_shoucang.class, userinfo);
	}

	@Override
	public int deleteShoucang(String shibian,String name) throws Exception {
		String sql="DELETE FROM tb_shoucang WHERE shibian = ? AND NAME=?";
		return  com.untils.BaseDao.update(sql, shibian,name);
	}

}
