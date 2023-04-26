package com.dao;

import com.entity.ShetuanjieshaoEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShetuanjieshaoVO;
import com.entity.view.ShetuanjieshaoView;


/**
 * 社团介绍
 * 
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public interface ShetuanjieshaoDao extends BaseMapper<ShetuanjieshaoEntity> {
	
	List<ShetuanjieshaoVO> selectListVO(@Param("ew") Wrapper<ShetuanjieshaoEntity> wrapper);
	
	ShetuanjieshaoVO selectVO(@Param("ew") Wrapper<ShetuanjieshaoEntity> wrapper);
	
	List<ShetuanjieshaoView> selectListView(@Param("ew") Wrapper<ShetuanjieshaoEntity> wrapper);

	List<ShetuanjieshaoView> selectListView(Pagination page,@Param("ew") Wrapper<ShetuanjieshaoEntity> wrapper);
	
	ShetuanjieshaoView selectView(@Param("ew") Wrapper<ShetuanjieshaoEntity> wrapper);
	

}
