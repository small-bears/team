package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.HuodongshenqingEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.HuodongshenqingVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.HuodongshenqingView;


/**
 * 活动申请
 *
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public interface HuodongshenqingService extends IService<HuodongshenqingEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<HuodongshenqingVO> selectListVO(Wrapper<HuodongshenqingEntity> wrapper);
   	
   	HuodongshenqingVO selectVO(@Param("ew") Wrapper<HuodongshenqingEntity> wrapper);
   	
   	List<HuodongshenqingView> selectListView(Wrapper<HuodongshenqingEntity> wrapper);
   	
   	HuodongshenqingView selectView(@Param("ew") Wrapper<HuodongshenqingEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<HuodongshenqingEntity> wrapper);
   	

}

