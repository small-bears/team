package com.dao;

import com.entity.ShezhangEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShezhangVO;
import com.entity.view.ShezhangView;


/**
 * 社长
 * 
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public interface ShezhangDao extends BaseMapper<ShezhangEntity> {
	
	List<ShezhangVO> selectListVO(@Param("ew") Wrapper<ShezhangEntity> wrapper);
	
	ShezhangVO selectVO(@Param("ew") Wrapper<ShezhangEntity> wrapper);
	
	List<ShezhangView> selectListView(@Param("ew") Wrapper<ShezhangEntity> wrapper);

	List<ShezhangView> selectListView(Pagination page,@Param("ew") Wrapper<ShezhangEntity> wrapper);
	
	ShezhangView selectView(@Param("ew") Wrapper<ShezhangEntity> wrapper);
	

}
