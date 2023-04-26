package com.dao;

import com.entity.SheyuanEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.SheyuanVO;
import com.entity.view.SheyuanView;


/**
 * 社员
 * 
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public interface SheyuanDao extends BaseMapper<SheyuanEntity> {
	
	List<SheyuanVO> selectListVO(@Param("ew") Wrapper<SheyuanEntity> wrapper);
	
	SheyuanVO selectVO(@Param("ew") Wrapper<SheyuanEntity> wrapper);
	
	List<SheyuanView> selectListView(@Param("ew") Wrapper<SheyuanEntity> wrapper);

	List<SheyuanView> selectListView(Pagination page,@Param("ew") Wrapper<SheyuanEntity> wrapper);
	
	SheyuanView selectView(@Param("ew") Wrapper<SheyuanEntity> wrapper);
	

}
