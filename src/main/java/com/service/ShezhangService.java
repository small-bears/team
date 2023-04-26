package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShezhangEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShezhangVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShezhangView;


/**
 * 社长
 *
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public interface ShezhangService extends IService<ShezhangEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShezhangVO> selectListVO(Wrapper<ShezhangEntity> wrapper);
   	
   	ShezhangVO selectVO(@Param("ew") Wrapper<ShezhangEntity> wrapper);
   	
   	List<ShezhangView> selectListView(Wrapper<ShezhangEntity> wrapper);
   	
   	ShezhangView selectView(@Param("ew") Wrapper<ShezhangEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShezhangEntity> wrapper);
   	

}

