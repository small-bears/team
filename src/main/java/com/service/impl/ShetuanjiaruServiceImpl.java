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


import com.dao.ShetuanjiaruDao;
import com.entity.ShetuanjiaruEntity;
import com.service.ShetuanjiaruService;
import com.entity.vo.ShetuanjiaruVO;
import com.entity.view.ShetuanjiaruView;

@Service("shetuanjiaruService")
public class ShetuanjiaruServiceImpl extends ServiceImpl<ShetuanjiaruDao, ShetuanjiaruEntity> implements ShetuanjiaruService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ShetuanjiaruEntity> page = this.selectPage(
                new Query<ShetuanjiaruEntity>(params).getPage(),
                new EntityWrapper<ShetuanjiaruEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ShetuanjiaruEntity> wrapper) {
		  Page<ShetuanjiaruView> page =new Query<ShetuanjiaruView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ShetuanjiaruVO> selectListVO(Wrapper<ShetuanjiaruEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ShetuanjiaruVO selectVO(Wrapper<ShetuanjiaruEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ShetuanjiaruView> selectListView(Wrapper<ShetuanjiaruEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ShetuanjiaruView selectView(Wrapper<ShetuanjiaruEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
