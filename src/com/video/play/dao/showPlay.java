package com.video.play.dao;

import java.util.List;

import com.entity.tb_pingjia;
import com.entity.tb_shiping;
import com.untils.pingjia;

public interface showPlay {
	List<tb_shiping> findAllVodeoByid(int id)throws Exception;

	List<tb_shiping> findVodeoByid(int id)throws Exception;

	List<pingjia> findPingJiaByid(int id)throws Exception;

	int isShoucang(String userinfo, String shibian)throws Exception;
	
	
}
