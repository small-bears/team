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


import com.dao.ShezhangDao;
import com.entity.ShezhangEntity;
import com.service.ShezhangService;
import com.entity.vo.ShezhangVO;
import com.entity.view.ShezhangView;

@Service("shezhangService")
public class ShezhangServiceImpl extends ServiceImpl<ShezhangDao, ShezhangEntity> implements ShezhangService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShezhangEntity> page = this.selectPage(
                new Query<ShezhangEntity>(params).getPage(),
                new EntityWrapper<ShezhangEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShezhangEntity> wrapper) {
		  Page<ShezhangView> page =new Query<ShezhangView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShezhangVO> selectListVO(Wrapper<ShezhangEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShezhangVO selectVO(Wrapper<ShezhangEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShezhangView> selectListView(Wrapper<ShezhangEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShezhangView selectView(Wrapper<ShezhangEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
