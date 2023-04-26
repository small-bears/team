package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.DiscussshetuanjieshaoEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.DiscussshetuanjieshaoVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.DiscussshetuanjieshaoView;


/**
 * 社团介绍评论表
 *
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public interface DiscussshetuanjieshaoService extends IService<DiscussshetuanjieshaoEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<DiscussshetuanjieshaoVO> selectListVO(Wrapper<DiscussshetuanjieshaoEntity> wrapper);
   	
   	DiscussshetuanjieshaoVO selectVO(@Param("ew") Wrapper<DiscussshetuanjieshaoEntity> wrapper);
   	
   	List<DiscussshetuanjieshaoView> selectListView(Wrapper<DiscussshetuanjieshaoEntity> wrapper);
   	
   	DiscussshetuanjieshaoView selectView(@Param("ew") Wrapper<DiscussshetuanjieshaoEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<DiscussshetuanjieshaoEntity> wrapper);
   	

}

