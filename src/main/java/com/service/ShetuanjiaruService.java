package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShetuanjiaruEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShetuanjiaruVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShetuanjiaruView;


/**
 * 社团加入
 *
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public interface ShetuanjiaruService extends IService<ShetuanjiaruEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShetuanjiaruVO> selectListVO(Wrapper<ShetuanjiaruEntity> wrapper);
   	
   	ShetuanjiaruVO selectVO(@Param("ew") Wrapper<ShetuanjiaruEntity> wrapper);
   	
   	List<ShetuanjiaruView> selectListView(Wrapper<ShetuanjiaruEntity> wrapper);
   	
   	ShetuanjiaruView selectView(@Param("ew") Wrapper<ShetuanjiaruEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShetuanjiaruEntity> wrapper);
   	

}

