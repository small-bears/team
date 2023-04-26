package com.entity.model;

import com.entity.ShetuanjieshaoEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 社团介绍
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public class ShetuanjieshaoModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 社长姓名
	 */
	
	private String shezhangxingming;
		
	/**
	 * 社团名称
	 */
	
	private String shetuanmingcheng;
		
	/**
	 * 社团图片
	 */
	
	private String shetuantupian;
		
	/**
	 * 成立时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date chenglishijian;
		
	/**
	 * 社团人数
	 */
	
	private Integer shetuanrenshu;
		
	/**
	 * 社团详情
	 */
	
	private String shetuanxiangqing;
		
	/**
	 * 赞
	 */
	
	private Integer thumbsupnum;
		
	/**
	 * 踩
	 */
	
	private Integer crazilynum;
				
	
	/**
	 * 设置：社长姓名
	 */
	 
	public void setShezhangxingming(String shezhangxingming) {
		this.shezhangxingming = shezhangxingming;
	}
	
	/**
	 * 获取：社长姓名
	 */
	public String getShezhangxingming() {
		return shezhangxingming;
	}
				
	
	/**
	 * 设置：社团名称
	 */
	 
	public void setShetuanmingcheng(String shetuanmingcheng) {
		this.shetuanmingcheng = shetuanmingcheng;
	}
	
	/**
	 * 获取：社团名称
	 */
	public String getShetuanmingcheng() {
		return shetuanmingcheng;
	}
				
	
	/**
	 * 设置：社团图片
	 */
	 
	public void setShetuantupian(String shetuantupian) {
		this.shetuantupian = shetuantupian;
	}
	
	/**
	 * 获取：社团图片
	 */
	public String getShetuantupian() {
		return shetuantupian;
	}
				
	
	/**
	 * 设置：成立时间
	 */
	 
	public void setChenglishijian(Date chenglishijian) {
		this.chenglishijian = chenglishijian;
	}
	
	/**
	 * 获取：成立时间
	 */
	public Date getChenglishijian() {
		return chenglishijian;
	}
				
	
	/**
	 * 设置：社团人数
	 */
	 
	public void setShetuanrenshu(Integer shetuanrenshu) {
		this.shetuanrenshu = shetuanrenshu;
	}
	
	/**
	 * 获取：社团人数
	 */
	public Integer getShetuanrenshu() {
		return shetuanrenshu;
	}
				
	
	/**
	 * 设置：社团详情
	 */
	 
	public void setShetuanxiangqing(String shetuanxiangqing) {
		this.shetuanxiangqing = shetuanxiangqing;
	}
	
	/**
	 * 获取：社团详情
	 */
	public String getShetuanxiangqing() {
		return shetuanxiangqing;
	}
				
	
	/**
	 * 设置：赞
	 */
	 
	public void setThumbsupnum(Integer thumbsupnum) {
		this.thumbsupnum = thumbsupnum;
	}
	
	/**
	 * 获取：赞
	 */
	public Integer getThumbsupnum() {
		return thumbsupnum;
	}
				
	
	/**
	 * 设置：踩
	 */
	 
	public void setCrazilynum(Integer crazilynum) {
		this.crazilynum = crazilynum;
	}
	
	/**
	 * 获取：踩
	 */
	public Integer getCrazilynum() {
		return crazilynum;
	}
			
}
