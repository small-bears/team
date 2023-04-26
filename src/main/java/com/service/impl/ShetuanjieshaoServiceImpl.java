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


import com.dao.ShetuanjieshaoDao;
import com.entity.ShetuanjieshaoEntity;
import com.service.ShetuanjieshaoService;
import com.entity.vo.ShetuanjieshaoVO;
import com.entity.view.ShetuanjieshaoView;

@Service("shetuanjieshaoService")
public class ShetuanjieshaoServiceImpl extends ServiceImpl<ShetuanjieshaoDao, ShetuanjieshaoEntity> implements ShetuanjieshaoService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShetuanjieshaoEntity> page = this.selectPage(
                new Query<ShetuanjieshaoEntity>(params).getPage(),
                new EntityWrapper<ShetuanjieshaoEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShetuanjieshaoEntity> wrapper) {
		  Page<ShetuanjieshaoView> page =new Query<ShetuanjieshaoView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShetuanjieshaoVO> selectListVO(Wrapper<ShetuanjieshaoEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShetuanjieshaoVO selectVO(Wrapper<ShetuanjieshaoEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShetuanjieshaoView> selectListView(Wrapper<ShetuanjieshaoEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShetuanjieshaoView selectView(Wrapper<ShetuanjieshaoEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
