package com.video.search.dao;

import java.util.List;

import com.entity.tb_shiping;

public interface searchVideo {

	 List<tb_shiping> searchVideo(String keyword)throws Exception;

}
