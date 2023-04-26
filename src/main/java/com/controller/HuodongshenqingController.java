package com.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Map;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Date;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

import com.utils.ValidatorUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.annotation.IgnoreAuth;

import com.entity.HuodongshenqingEntity;
import com.entity.view.HuodongshenqingView;

import com.service.HuodongshenqingService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 活动申请
 * 后端接口
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
@RestController
@RequestMapping("/huodongshenqing")
public class HuodongshenqingController {
    @Autowired
    private HuodongshenqingService huodongshenqingService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,HuodongshenqingEntity huodongshenqing, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("shezhang")) {
			huodongshenqing.setShezhangzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<HuodongshenqingEntity> ew = new EntityWrapper<HuodongshenqingEntity>();
    	PageUtils page = huodongshenqingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, huodongshenqing), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,HuodongshenqingEntity huodongshenqing, 
		HttpServletRequest request){
        EntityWrapper<HuodongshenqingEntity> ew = new EntityWrapper<HuodongshenqingEntity>();
    	PageUtils page = huodongshenqingService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, huodongshenqing), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( HuodongshenqingEntity huodongshenqing){
       	EntityWrapper<HuodongshenqingEntity> ew = new EntityWrapper<HuodongshenqingEntity>();
      	ew.allEq(MPUtil.allEQMapPre( huodongshenqing, "huodongshenqing")); 
        return R.ok().put("data", huodongshenqingService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(HuodongshenqingEntity huodongshenqing){
        EntityWrapper< HuodongshenqingEntity> ew = new EntityWrapper< HuodongshenqingEntity>();
 		ew.allEq(MPUtil.allEQMapPre( huodongshenqing, "huodongshenqing")); 
		HuodongshenqingView huodongshenqingView =  huodongshenqingService.selectView(ew);
		return R.ok("查询活动申请成功").put("data", huodongshenqingView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        HuodongshenqingEntity huodongshenqing = huodongshenqingService.selectById(id);
        return R.ok().put("data", huodongshenqing);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        HuodongshenqingEntity huodongshenqing = huodongshenqingService.selectById(id);
        return R.ok().put("data", huodongshenqing);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody HuodongshenqingEntity huodongshenqing, HttpServletRequest request){
    	huodongshenqing.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(huodongshenqing);

        huodongshenqingService.insert(huodongshenqing);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody HuodongshenqingEntity huodongshenqing, HttpServletRequest request){
    	huodongshenqing.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(huodongshenqing);

        huodongshenqingService.insert(huodongshenqing);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody HuodongshenqingEntity huodongshenqing, HttpServletRequest request){
        //ValidatorUtils.validateEntity(huodongshenqing);
        huodongshenqingService.updateById(huodongshenqing);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        huodongshenqingService.deleteBatchIds(Arrays.asList(ids));
        return R.ok();
    }
    
    /**
     * 提醒接口
     */
	@RequestMapping("/remind/{columnName}/{type}")
	public R remindCount(@PathVariable("columnName") String columnName, HttpServletRequest request, 
						 @PathVariable("type") String type,@RequestParam Map<String, Object> map) {
		map.put("column", columnName);
		map.put("type", type);
		
		if(type.equals("2")) {
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Calendar c = Calendar.getInstance();
			Date remindStartDate = null;
			Date remindEndDate = null;
			if(map.get("remindstart")!=null) {
				Integer remindStart = Integer.parseInt(map.get("remindstart").toString());
				c.setTime(new Date()); 
				c.add(Calendar.DAY_OF_MONTH,remindStart);
				remindStartDate = c.getTime();
				map.put("remindstart", sdf.format(remindStartDate));
			}
			if(map.get("remindend")!=null) {
				Integer remindEnd = Integer.parseInt(map.get("remindend").toString());
				c.setTime(new Date());
				c.add(Calendar.DAY_OF_MONTH,remindEnd);
				remindEndDate = c.getTime();
				map.put("remindend", sdf.format(remindEndDate));
			}
		}
		
		Wrapper<HuodongshenqingEntity> wrapper = new EntityWrapper<HuodongshenqingEntity>();
		if(map.get("remindstart")!=null) {
			wrapper.ge(columnName, map.get("remindstart"));
		}
		if(map.get("remindend")!=null) {
			wrapper.le(columnName, map.get("remindend"));
		}

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("shezhang")) {
			wrapper.eq("shezhangzhanghao", (String)request.getSession().getAttribute("username"));
		}

		int count = huodongshenqingService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	





}
