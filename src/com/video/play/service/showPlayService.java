package com.video.play.service;

import java.util.List;

import com.entity.tb_pingjia;
import com.entity.tb_shiping;
import com.untils.pingjia;

public interface showPlayService {

	List<tb_shiping> findAllVodeoByid(int id);

	List<tb_shiping> findVodeoByid(int id);

	List<pingjia> findPingJiaByid(int id);

	int isShoucang(String userinfo, String shibian);
}
