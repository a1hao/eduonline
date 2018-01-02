package com.video.show.service;

import java.util.List;

import com.entity.tb_shiping;
import com.entity.tb_type;

public interface showVideoService {

	List<tb_shiping> findAddVideo();

	List<tb_shiping> findRecommendVideo();//找到推荐视频

	List<tb_shiping> findFreeVideo();//找到免费视频

	int findIdByName(String name); //通过名字找到id

	int insertComment(int id, int shibian, String text);//评论功能

	List<tb_shiping> findVideoByTid(int a1);//根据tid找到视频

	List<tb_type> findTypeBytid(int i);//根据tid找到type的名字
}
