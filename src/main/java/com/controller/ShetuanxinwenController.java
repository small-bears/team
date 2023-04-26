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

import com.entity.ShetuanxinwenEntity;
import com.entity.view.ShetuanxinwenView;

import com.service.ShetuanxinwenService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import java.io.IOException;

/**
 * 社团新闻
 * 后端接口
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
@RestController
@RequestMapping("/shetuanxinwen")
public class ShetuanxinwenController {
    @Autowired
    private ShetuanxinwenService shetuanxinwenService;



    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ShetuanxinwenEntity shetuanxinwen, 
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") Date fabushijianstart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") Date fabushijianend,
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("shezhang")) {
			shetuanxinwen.setShezhangzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<ShetuanxinwenEntity> ew = new EntityWrapper<ShetuanxinwenEntity>();
                if(fabushijianstart!=null) ew.ge("fabushijian", fabushijianstart);
                if(fabushijianend!=null) ew.le("fabushijian", fabushijianend);
    	PageUtils page = shetuanxinwenService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shetuanxinwen), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ShetuanxinwenEntity shetuanxinwen, 
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") Date fabushijianstart,
                @RequestParam(required = false) @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") Date fabushijianend,
		HttpServletRequest request){
        EntityWrapper<ShetuanxinwenEntity> ew = new EntityWrapper<ShetuanxinwenEntity>();
                if(fabushijianstart!=null) ew.ge("fabushijian", fabushijianstart);
                if(fabushijianend!=null) ew.le("fabushijian", fabushijianend);
    	PageUtils page = shetuanxinwenService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shetuanxinwen), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ShetuanxinwenEntity shetuanxinwen){
       	EntityWrapper<ShetuanxinwenEntity> ew = new EntityWrapper<ShetuanxinwenEntity>();
      	ew.allEq(MPUtil.allEQMapPre( shetuanxinwen, "shetuanxinwen")); 
        return R.ok().put("data", shetuanxinwenService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ShetuanxinwenEntity shetuanxinwen){
        EntityWrapper< ShetuanxinwenEntity> ew = new EntityWrapper< ShetuanxinwenEntity>();
 		ew.allEq(MPUtil.allEQMapPre( shetuanxinwen, "shetuanxinwen")); 
		ShetuanxinwenView shetuanxinwenView =  shetuanxinwenService.selectView(ew);
		return R.ok("查询社团新闻成功").put("data", shetuanxinwenView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ShetuanxinwenEntity shetuanxinwen = shetuanxinwenService.selectById(id);
        return R.ok().put("data", shetuanxinwen);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ShetuanxinwenEntity shetuanxinwen = shetuanxinwenService.selectById(id);
        return R.ok().put("data", shetuanxinwen);
    }
    



    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ShetuanxinwenEntity shetuanxinwen, HttpServletRequest request){
    	shetuanxinwen.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shetuanxinwen);

        shetuanxinwenService.insert(shetuanxinwen);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ShetuanxinwenEntity shetuanxinwen, HttpServletRequest request){
    	shetuanxinwen.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shetuanxinwen);

        shetuanxinwenService.insert(shetuanxinwen);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ShetuanxinwenEntity shetuanxinwen, HttpServletRequest request){
        //ValidatorUtils.validateEntity(shetuanxinwen);
        shetuanxinwenService.updateById(shetuanxinwen);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        shetuanxinwenService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<ShetuanxinwenEntity> wrapper = new EntityWrapper<ShetuanxinwenEntity>();
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

		int count = shetuanxinwenService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	





}
