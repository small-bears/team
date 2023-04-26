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

import com.entity.ShetuanjieshaoEntity;
import com.entity.view.ShetuanjieshaoView;

import com.service.ShetuanjieshaoService;
import com.service.TokenService;
import com.utils.PageUtils;
import com.utils.R;
import com.utils.MD5Util;
import com.utils.MPUtil;
import com.utils.CommonUtil;
import java.io.IOException;
import com.service.StoreupService;
import com.entity.StoreupEntity;

/**
 * 社团介绍
 * 后端接口
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
@RestController
@RequestMapping("/shetuanjieshao")
public class ShetuanjieshaoController {
    @Autowired
    private ShetuanjieshaoService shetuanjieshaoService;


    @Autowired
    private StoreupService storeupService;

    


    /**
     * 后端列表
     */
    @RequestMapping("/page")
    public R page(@RequestParam Map<String, Object> params,ShetuanjieshaoEntity shetuanjieshao, 
		HttpServletRequest request){

		String tableName = request.getSession().getAttribute("tableName").toString();
		if(tableName.equals("shezhang")) {
			shetuanjieshao.setShezhangzhanghao((String)request.getSession().getAttribute("username"));
		}
        EntityWrapper<ShetuanjieshaoEntity> ew = new EntityWrapper<ShetuanjieshaoEntity>();
    	PageUtils page = shetuanjieshaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shetuanjieshao), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }
    
    /**
     * 前端列表
     */
	@IgnoreAuth
    @RequestMapping("/list")
    public R list(@RequestParam Map<String, Object> params,ShetuanjieshaoEntity shetuanjieshao, 
		HttpServletRequest request){
        EntityWrapper<ShetuanjieshaoEntity> ew = new EntityWrapper<ShetuanjieshaoEntity>();
    	PageUtils page = shetuanjieshaoService.queryPage(params, MPUtil.sort(MPUtil.between(MPUtil.likeOrEq(ew, shetuanjieshao), params), params));
		request.setAttribute("data", page);
        return R.ok().put("data", page);
    }

	/**
     * 列表
     */
    @RequestMapping("/lists")
    public R list( ShetuanjieshaoEntity shetuanjieshao){
       	EntityWrapper<ShetuanjieshaoEntity> ew = new EntityWrapper<ShetuanjieshaoEntity>();
      	ew.allEq(MPUtil.allEQMapPre( shetuanjieshao, "shetuanjieshao")); 
        return R.ok().put("data", shetuanjieshaoService.selectListView(ew));
    }

	 /**
     * 查询
     */
    @RequestMapping("/query")
    public R query(ShetuanjieshaoEntity shetuanjieshao){
        EntityWrapper< ShetuanjieshaoEntity> ew = new EntityWrapper< ShetuanjieshaoEntity>();
 		ew.allEq(MPUtil.allEQMapPre( shetuanjieshao, "shetuanjieshao")); 
		ShetuanjieshaoView shetuanjieshaoView =  shetuanjieshaoService.selectView(ew);
		return R.ok("查询社团介绍成功").put("data", shetuanjieshaoView);
    }
	
    /**
     * 后端详情
     */
    @RequestMapping("/info/{id}")
    public R info(@PathVariable("id") Long id){
        ShetuanjieshaoEntity shetuanjieshao = shetuanjieshaoService.selectById(id);
        return R.ok().put("data", shetuanjieshao);
    }

    /**
     * 前端详情
     */
	@IgnoreAuth
    @RequestMapping("/detail/{id}")
    public R detail(@PathVariable("id") Long id){
        ShetuanjieshaoEntity shetuanjieshao = shetuanjieshaoService.selectById(id);
        return R.ok().put("data", shetuanjieshao);
    }
    


    /**
     * 赞或踩
     */
    @RequestMapping("/thumbsup/{id}")
    public R vote(@PathVariable("id") String id,String type){
        ShetuanjieshaoEntity shetuanjieshao = shetuanjieshaoService.selectById(id);
        if(type.equals("1")) {
        	shetuanjieshao.setThumbsupnum(shetuanjieshao.getThumbsupnum()+1);
        } else {
        	shetuanjieshao.setCrazilynum(shetuanjieshao.getCrazilynum()+1);
        }
        shetuanjieshaoService.updateById(shetuanjieshao);
        return R.ok("投票成功");
    }

    /**
     * 后端保存
     */
    @RequestMapping("/save")
    public R save(@RequestBody ShetuanjieshaoEntity shetuanjieshao, HttpServletRequest request){
    	shetuanjieshao.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shetuanjieshao);

        shetuanjieshaoService.insert(shetuanjieshao);
        return R.ok();
    }
    
    /**
     * 前端保存
     */
    @RequestMapping("/add")
    public R add(@RequestBody ShetuanjieshaoEntity shetuanjieshao, HttpServletRequest request){
    	shetuanjieshao.setId(new Date().getTime()+new Double(Math.floor(Math.random()*1000)).longValue());
    	//ValidatorUtils.validateEntity(shetuanjieshao);

        shetuanjieshaoService.insert(shetuanjieshao);
        return R.ok();
    }

    /**
     * 修改
     */
    @RequestMapping("/update")
    public R update(@RequestBody ShetuanjieshaoEntity shetuanjieshao, HttpServletRequest request){
        //ValidatorUtils.validateEntity(shetuanjieshao);
        shetuanjieshaoService.updateById(shetuanjieshao);//全部更新
        return R.ok();
    }
    

    /**
     * 删除
     */
    @RequestMapping("/delete")
    public R delete(@RequestBody Long[] ids){
        shetuanjieshaoService.deleteBatchIds(Arrays.asList(ids));
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
		
		Wrapper<ShetuanjieshaoEntity> wrapper = new EntityWrapper<ShetuanjieshaoEntity>();
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

		int count = shetuanjieshaoService.selectCount(wrapper);
		return R.ok().put("count", count);
	}
	
	





}
