package com.user.manager.service;

import java.util.List;

import com.entity.tb_shoucang;

public interface ShoucangVideoService {

	int shoucangVideo(String shibian, String userinfo);

	List<tb_shoucang> findShipingNameBy(String userinfo);

	int deleteShoucang(String shibian,String name);

}
