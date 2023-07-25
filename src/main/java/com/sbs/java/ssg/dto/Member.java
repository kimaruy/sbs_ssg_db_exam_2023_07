package com.sbs.java.ssg.dto;

import java.util.Map;

import lombok.Data;

@Data
public class Member extends Dto {
	public String loginId;
	public String loginPw; 
	public String nickName;
	public String sex;
	public double height;
	public double weight;
	public double bmi;
	public String bmi_level;
	public String loss;
	public String months;
	public String category;
	public String category_level;
	
	
	
	public Member(Map<String, Object> row) {
		super(row);
		this.loginId = (String) row.get("loginId");
		this.loginPw = (String) row.get("loginPw");
		this.nickName = (String) row.get("nickName");
		this.sex = (String) row.get("sex");
		this.height = (double) row.get("height");
		this.weight = (double) row.get("weight");
		this.bmi = (double) row.get("bmi");
		this.bmi_level = (String) row.get("bmi_level");
		this.loss = (String) row.get("loss");
		this.loss = (String) row.get("months");
		this.category = (String) row.get("category");
		this.category_level = (String) row.get("category_level");
		

	}


	public Member(String loginId, String loginPw, String nickName, String sex, double height, double weight, double bmi, String bmi_level, String loss, String months, String category, String category_level) {
		this.loginId = loginId;
		this.loginPw = loginPw;
		this.nickName = nickName;
		this.sex = sex;
		this.height = height;
		this.weight = weight;
		this.bmi = bmi;
		this.bmi_level = bmi_level;
		this.loss = loss;
		this.months = months;
		this.category = category;
		this.category_level = category_level;
	}
	public Member(String nickName) {
		this.nickName = nickName;
		
	}
	public Member(int id,String nickName) {
		this.nickName = nickName;
		this.id = id;
		
	}
	public Member(int id, String sex, double height, double weight, double bmi, String bmi_level) {
		this.sex = sex;
		this.height = height;
		this.weight = weight;
		this.bmi = bmi;
		this.bmi_level = bmi_level;
		this.id = id;
	}
	
	public Member(int id, String category, String category_level) {
		this.category = category;
		this.category_level = category_level;
		this.id = id;
		
	}

}