package com.entity.vo;

import com.entity.HuodongshenqingEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 活动申请
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-02-19 12:41:40
 */
public class HuodongshenqingVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 活动名称
	 */
	
	private String huodongmingcheng;
		
	/**
	 * 活动时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date huodongshijian;
		
	/**
	 * 活动地点
	 */
	
	private String huodongdidian;
		
	/**
	 * 申请时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date shenqingshijian;
		
	/**
	 * 申请原因
	 */
	
	private String shenqingyuanyin;
		
	/**
	 * 社团名称
	 */
	
	private String shetuanmingcheng;
		
	/**
	 * 社长账号
	 */
	
	private String shezhangzhanghao;
		
	/**
	 * 社长姓名
	 */
	
	private String shezhangxingming;
		
	/**
	 * 电话号码
	 */
	
	private String dianhuahaoma;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
	/**
	 * 设置：活动名称
	 */
	 
	public void setHuodongmingcheng(String huodongmingcheng) {
		this.huodongmingcheng = huodongmingcheng;
	}
	
	/**
	 * 获取：活动名称
	 */
	public String getHuodongmingcheng() {
		return huodongmingcheng;
	}
				
	
	/**
	 * 设置：活动时间
	 */
	 
	public void setHuodongshijian(Date huodongshijian) {
		this.huodongshijian = huodongshijian;
	}
	
	/**
	 * 获取：活动时间
	 */
	public Date getHuodongshijian() {
		return huodongshijian;
	}
				
	
	/**
	 * 设置：活动地点
	 */
	 
	public void setHuodongdidian(String huodongdidian) {
		this.huodongdidian = huodongdidian;
	}
	
	/**
	 * 获取：活动地点
	 */
	public String getHuodongdidian() {
		return huodongdidian;
	}
				
	
	/**
	 * 设置：申请时间
	 */
	 
	public void setShenqingshijian(Date shenqingshijian) {
		this.shenqingshijian = shenqingshijian;
	}
	
	/**
	 * 获取：申请时间
	 */
	public Date getShenqingshijian() {
		return shenqingshijian;
	}
				
	
	/**
	 * 设置：申请原因
	 */
	 
	public void setShenqingyuanyin(String shenqingyuanyin) {
		this.shenqingyuanyin = shenqingyuanyin;
	}
	
	/**
	 * 获取：申请原因
	 */
	public String getShenqingyuanyin() {
		return shenqingyuanyin;
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
	 * 设置：社长账号
	 */
	 
	public void setShezhangzhanghao(String shezhangzhanghao) {
		this.shezhangzhanghao = shezhangzhanghao;
	}
	
	/**
	 * 获取：社长账号
	 */
	public String getShezhangzhanghao() {
		return shezhangzhanghao;
	}
				
	
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
	 * 设置：电话号码
	 */
	 
	public void setDianhuahaoma(String dianhuahaoma) {
		this.dianhuahaoma = dianhuahaoma;
	}
	
	/**
	 * 获取：电话号码
	 */
	public String getDianhuahaoma() {
		return dianhuahaoma;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
			
}
