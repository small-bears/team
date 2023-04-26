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


import com.dao.ShetuanxinwenDao;
import com.entity.ShetuanxinwenEntity;
import com.service.ShetuanxinwenService;
import com.entity.vo.ShetuanxinwenVO;
import com.entity.view.ShetuanxinwenView;

@Service("shetuanxinwenService")
public class ShetuanxinwenServiceImpl extends ServiceImpl<ShetuanxinwenDao, ShetuanxinwenEntity> implements ShetuanxinwenService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShetuanxinwenEntity> page = this.selectPage(
                new Query<ShetuanxinwenEntity>(params).getPage(),
                new EntityWrapper<ShetuanxinwenEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShetuanxinwenEntity> wrapper) {
		  Page<ShetuanxinwenView> page =new Query<ShetuanxinwenView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShetuanxinwenVO> selectListVO(Wrapper<ShetuanxinwenEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShetuanxinwenVO selectVO(Wrapper<ShetuanxinwenEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShetuanxinwenView> selectListView(Wrapper<ShetuanxinwenEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShetuanxinwenView selectView(Wrapper<ShetuanxinwenEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
