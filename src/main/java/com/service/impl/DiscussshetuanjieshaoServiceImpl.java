package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.DiscussshetuanjieshaoDao;
import com.entity.DiscussshetuanjieshaoEntity;
import com.service.DiscussshetuanjieshaoService;
import com.entity.vo.DiscussshetuanjieshaoVO;
import com.entity.view.DiscussshetuanjieshaoView;

@Service("discussshetuanjieshaoService")
public class DiscussshetuanjieshaoServiceImpl extends ServiceImpl<DiscussshetuanjieshaoDao, DiscussshetuanjieshaoEntity> implements DiscussshetuanjieshaoService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<DiscussshetuanjieshaoEntity> page = this.selectPage(
                new Query<DiscussshetuanjieshaoEntity>(params).getPage(),
                new EntityWrapper<DiscussshetuanjieshaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<DiscussshetuanjieshaoEntity> wrapper) {
		  Page<DiscussshetuanjieshaoView> page =new Query<DiscussshetuanjieshaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<DiscussshetuanjieshaoVO> selectListVO(Wrapper<DiscussshetuanjieshaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public DiscussshetuanjieshaoVO selectVO(Wrapper<DiscussshetuanjieshaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<DiscussshetuanjieshaoView> selectListView(Wrapper<DiscussshetuanjieshaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public DiscussshetuanjieshaoView selectView(Wrapper<DiscussshetuanjieshaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
