package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ShetuanjieshaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ShetuanjieshaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ShetuanjieshaoView;


/**
 * 社团介绍
 *
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public interface ShetuanjieshaoService extends IService<ShetuanjieshaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ShetuanjieshaoVO> selectListVO(Wrapper<ShetuanjieshaoEntity> wrapper);
   	
   	ShetuanjieshaoVO selectVO(@Param("ew") Wrapper<ShetuanjieshaoEntity> wrapper);
   	
   	List<ShetuanjieshaoView> selectListView(Wrapper<ShetuanjieshaoEntity> wrapper);
   	
   	ShetuanjieshaoView selectView(@Param("ew") Wrapper<ShetuanjieshaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ShetuanjieshaoEntity> wrapper);
   	

}

