package com.entity.view;

import com.entity.SheyuanjiaofeiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 社员缴费
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
@TableName("sheyuanjiaofei")
public class SheyuanjiaofeiView  extends SheyuanjiaofeiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public SheyuanjiaofeiView(){
	}
 
 	public SheyuanjiaofeiView(SheyuanjiaofeiEntity sheyuanjiaofeiEntity){
 	try {
			BeanUtils.copyProperties(this, sheyuanjiaofeiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
