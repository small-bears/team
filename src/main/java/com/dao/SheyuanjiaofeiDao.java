package com.dao;

import com.entity.SheyuanjiaofeiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.SheyuanjiaofeiVO;
import com.entity.view.SheyuanjiaofeiView;


/**
 * 社员缴费
 * 
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public interface SheyuanjiaofeiDao extends BaseMapper<SheyuanjiaofeiEntity> {
	
	List<SheyuanjiaofeiVO> selectListVO(@Param("ew") Wrapper<SheyuanjiaofeiEntity> wrapper);
	
	SheyuanjiaofeiVO selectVO(@Param("ew") Wrapper<SheyuanjiaofeiEntity> wrapper);
	
	List<SheyuanjiaofeiView> selectListView(@Param("ew") Wrapper<SheyuanjiaofeiEntity> wrapper);

	List<SheyuanjiaofeiView> selectListView(Pagination page,@Param("ew") Wrapper<SheyuanjiaofeiEntity> wrapper);
	
	SheyuanjiaofeiView selectView(@Param("ew") Wrapper<SheyuanjiaofeiEntity> wrapper);
	

}
