package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.SheyuanjiaofeiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.SheyuanjiaofeiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.SheyuanjiaofeiView;


/**
 * 社员缴费
 *
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public interface SheyuanjiaofeiService extends IService<SheyuanjiaofeiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<SheyuanjiaofeiVO> selectListVO(Wrapper<SheyuanjiaofeiEntity> wrapper);
   	
   	SheyuanjiaofeiVO selectVO(@Param("ew") Wrapper<SheyuanjiaofeiEntity> wrapper);
   	
   	List<SheyuanjiaofeiView> selectListView(Wrapper<SheyuanjiaofeiEntity> wrapper);
   	
   	SheyuanjiaofeiView selectView(@Param("ew") Wrapper<SheyuanjiaofeiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<SheyuanjiaofeiEntity> wrapper);
   	

}

