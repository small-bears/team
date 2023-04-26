package com.entity.view;

import com.entity.ShetuanxinwenEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 社团新闻
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
@TableName("shetuanxinwen")
public class ShetuanxinwenView  extends ShetuanxinwenEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ShetuanxinwenView(){
	}
 
 	public ShetuanxinwenView(ShetuanxinwenEntity shetuanxinwenEntity){
 	try {
			BeanUtils.copyProperties(this, shetuanxinwenEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
