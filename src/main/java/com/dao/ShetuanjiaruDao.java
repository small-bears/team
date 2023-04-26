package com.dao;

import com.entity.ShetuanjiaruEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ShetuanjiaruVO;
import com.entity.view.ShetuanjiaruView;


/**
 * 社团加入
 * 
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public interface ShetuanjiaruDao extends BaseMapper<ShetuanjiaruEntity> {
	
	List<ShetuanjiaruVO> selectListVO(@Param("ew") Wrapper<ShetuanjiaruEntity> wrapper);
	
	ShetuanjiaruVO selectVO(@Param("ew") Wrapper<ShetuanjiaruEntity> wrapper);
	
	List<ShetuanjiaruView> selectListView(@Param("ew") Wrapper<ShetuanjiaruEntity> wrapper);

	List<ShetuanjiaruView> selectListView(Pagination page,@Param("ew") Wrapper<ShetuanjiaruEntity> wrapper);
	
	ShetuanjiaruView selectView(@Param("ew") Wrapper<ShetuanjiaruEntity> wrapper);
	

}
