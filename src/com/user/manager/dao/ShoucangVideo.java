package com.user.manager.dao;

import java.util.List;

import com.entity.tb_shoucang;

public interface ShoucangVideo {

	int shoucangVideo(String shibian, String userinfo)throws Exception ;

	List<tb_shoucang> findShipingNameBy(String userinfo)throws Exception;

	int deleteShoucang(String shibian,String name)throws Exception;

}
