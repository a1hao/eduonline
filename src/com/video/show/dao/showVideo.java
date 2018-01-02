package com.video.show.dao;

import java.util.List;

import com.entity.tb_shiping;
import com.entity.tb_type;

public interface showVideo {

	List<tb_shiping> findAllVodeo()throws Exception;

	List<tb_shiping> findRecommendVideo()throws Exception;

	List<tb_shiping> findFreeVideo()throws Exception;

	int findIdByName(String name)throws Exception;

	int insertComment(int id, int shibian, String text)throws Exception;//评论功能

	List<tb_shiping> findVideoByTid(int a1)throws Exception;//根据tid找到视频

	List<tb_type> findTypeBytid(int i)throws Exception;
}
