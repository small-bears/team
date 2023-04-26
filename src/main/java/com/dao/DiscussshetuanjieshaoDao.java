package com.dao;

import com.entity.DiscussshetuanjieshaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.DiscussshetuanjieshaoVO;
import com.entity.view.DiscussshetuanjieshaoView;


/**
 * 社团介绍评论表
 * 
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public interface DiscussshetuanjieshaoDao extends BaseMapper<DiscussshetuanjieshaoEntity> {
	
	List<DiscussshetuanjieshaoVO> selectListVO(@Param("ew") Wrapper<DiscussshetuanjieshaoEntity> wrapper);
	
	DiscussshetuanjieshaoVO selectVO(@Param("ew") Wrapper<DiscussshetuanjieshaoEntity> wrapper);
	
	List<DiscussshetuanjieshaoView> selectListView(@Param("ew") Wrapper<DiscussshetuanjieshaoEntity> wrapper);

	List<DiscussshetuanjieshaoView> selectListView(Pagination page,@Param("ew") Wrapper<DiscussshetuanjieshaoEntity> wrapper);
	
	DiscussshetuanjieshaoView selectView(@Param("ew") Wrapper<DiscussshetuanjieshaoEntity> wrapper);
	

}
