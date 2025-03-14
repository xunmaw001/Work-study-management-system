package com.entity.vo;

import com.entity.XueshengkaoqinEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 学生考勤
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2021-01-22 12:03:20
 */
public class XueshengkaoqinVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 考勤时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date kaoqinshijian;
		
	/**
	 * 学号
	 */
	
	private String xuehao;
		
	/**
	 * 学生姓名
	 */
	
	private String xueshengxingming;
		
	/**
	 * 是否迟到
	 */
	
	private String shifouchidao;
		
	/**
	 * 备注
	 */
	
	private String beizhu;
				
	
	/**
	 * 设置：考勤时间
	 */
	 
	public void setKaoqinshijian(Date kaoqinshijian) {
		this.kaoqinshijian = kaoqinshijian;
	}
	
	/**
	 * 获取：考勤时间
	 */
	public Date getKaoqinshijian() {
		return kaoqinshijian;
	}
				
	
	/**
	 * 设置：学号
	 */
	 
	public void setXuehao(String xuehao) {
		this.xuehao = xuehao;
	}
	
	/**
	 * 获取：学号
	 */
	public String getXuehao() {
		return xuehao;
	}
				
	
	/**
	 * 设置：学生姓名
	 */
	 
	public void setXueshengxingming(String xueshengxingming) {
		this.xueshengxingming = xueshengxingming;
	}
	
	/**
	 * 获取：学生姓名
	 */
	public String getXueshengxingming() {
		return xueshengxingming;
	}
				
	
	/**
	 * 设置：是否迟到
	 */
	 
	public void setShifouchidao(String shifouchidao) {
		this.shifouchidao = shifouchidao;
	}
	
	/**
	 * 获取：是否迟到
	 */
	public String getShifouchidao() {
		return shifouchidao;
	}
				
	
	/**
	 * 设置：备注
	 */
	 
	public void setBeizhu(String beizhu) {
		this.beizhu = beizhu;
	}
	
	/**
	 * 获取：备注
	 */
	public String getBeizhu() {
		return beizhu;
	}
			
}
