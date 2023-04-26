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


import com.dao.HuodongshenqingDao;
import com.entity.HuodongshenqingEntity;
import com.service.HuodongshenqingService;
import com.entity.vo.HuodongshenqingVO;
import com.entity.view.HuodongshenqingView;

@Service("huodongshenqingService")
public class HuodongshenqingServiceImpl extends ServiceImpl<HuodongshenqingDao, HuodongshenqingEntity> implements HuodongshenqingService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<HuodongshenqingEntity> page = this.selectPage(
                new Query<HuodongshenqingEntity>(params).getPage(),
                new EntityWrapper<HuodongshenqingEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<HuodongshenqingEntity> wrapper) {
		  Page<HuodongshenqingView> page =new Query<HuodongshenqingView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<HuodongshenqingVO> selectListVO(Wrapper<HuodongshenqingEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public HuodongshenqingVO selectVO(Wrapper<HuodongshenqingEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<HuodongshenqingView> selectListView(Wrapper<HuodongshenqingEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public HuodongshenqingView selectView(Wrapper<HuodongshenqingEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
