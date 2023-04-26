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


import com.dao.SheyuanDao;
import com.entity.SheyuanEntity;
import com.service.SheyuanService;
import com.entity.vo.SheyuanVO;
import com.entity.view.SheyuanView;

@Service("sheyuanService")
public class SheyuanServiceImpl extends ServiceImpl<SheyuanDao, SheyuanEntity> implements SheyuanService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SheyuanEntity> page = this.selectPage(
                new Query<SheyuanEntity>(params).getPage(),
                new EntityWrapper<SheyuanEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<SheyuanEntity> wrapper) {
		  Page<SheyuanView> page =new Query<SheyuanView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<SheyuanVO> selectListVO(Wrapper<SheyuanEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public SheyuanVO selectVO(Wrapper<SheyuanEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<SheyuanView> selectListView(Wrapper<SheyuanEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public SheyuanView selectView(Wrapper<SheyuanEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
