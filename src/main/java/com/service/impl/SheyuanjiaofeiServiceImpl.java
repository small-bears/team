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


import com.dao.SheyuanjiaofeiDao;
import com.entity.SheyuanjiaofeiEntity;
import com.service.SheyuanjiaofeiService;
import com.entity.vo.SheyuanjiaofeiVO;
import com.entity.view.SheyuanjiaofeiView;

@Service("sheyuanjiaofeiService")
public class SheyuanjiaofeiServiceImpl extends ServiceImpl<SheyuanjiaofeiDao, SheyuanjiaofeiEntity> implements SheyuanjiaofeiService {


    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<SheyuanjiaofeiEntity> page = this.selectPage(
                new Query<SheyuanjiaofeiEntity>(params).getPage(),
                new EntityWrapper<SheyuanjiaofeiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<SheyuanjiaofeiEntity> wrapper) {
		  Page<SheyuanjiaofeiView> page =new Query<SheyuanjiaofeiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<SheyuanjiaofeiVO> selectListVO(Wrapper<SheyuanjiaofeiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public SheyuanjiaofeiVO selectVO(Wrapper<SheyuanjiaofeiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<SheyuanjiaofeiView> selectListView(Wrapper<SheyuanjiaofeiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public SheyuanjiaofeiView selectView(Wrapper<SheyuanjiaofeiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
