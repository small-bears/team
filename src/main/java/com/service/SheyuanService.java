package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.SheyuanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.SheyuanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.SheyuanView;


/**
 * 社员
 *
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public interface SheyuanService extends IService<SheyuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<SheyuanVO> selectListVO(Wrapper<SheyuanEntity> wrapper);
   	
   	SheyuanVO selectVO(@Param("ew") Wrapper<SheyuanEntity> wrapper);
   	
   	List<SheyuanView> selectListView(Wrapper<SheyuanEntity> wrapper);
   	
   	SheyuanView selectView(@Param("ew") Wrapper<SheyuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<SheyuanEntity> wrapper);
   	

}

