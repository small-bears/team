package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShetuanxinwenEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShetuanxinwenVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShetuanxinwenView;


/**
 * 社团新闻
 *
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public interface ShetuanxinwenService extends IService<ShetuanxinwenEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShetuanxinwenVO> selectListVO(Wrapper<ShetuanxinwenEntity> wrapper);
   	
   	ShetuanxinwenVO selectVO(@Param("ew") Wrapper<ShetuanxinwenEntity> wrapper);
   	
   	List<ShetuanxinwenView> selectListView(Wrapper<ShetuanxinwenEntity> wrapper);
   	
   	ShetuanxinwenView selectView(@Param("ew") Wrapper<ShetuanxinwenEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShetuanxinwenEntity> wrapper);
   	

}

