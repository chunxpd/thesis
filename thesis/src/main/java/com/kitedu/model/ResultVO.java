package com.kitedu.model;

import java.time.LocalDate;
import java.util.Date;

public class ResultVO {

    


	private int sex; // 성별
    
    @Override
	public String toString() {
		return "ResultVO [sex=" + sex + ", disabled=" + disabled + ", disabledGrade=" + disabledGrade + ", birth="
				+ birth + ", ageTerm=" + ageTerm + ", korean=" + korean + ", english=" + english + ", math=" + math
				+ ", oose1=" + oose1 + ", bioose1=" + bioose1 + ", yangson1=" + yangson1 + ", oose2=" + oose2
				+ ", bioose2=" + bioose2 + ", oose3=" + oose3 + ", bioose3=" + bioose3 + ", kead2=" + kead2 + ", simri="
				+ simri + ", interview=" + interview + ", testdiscuss=" + testdiscuss + ", interviewdiscuss="
				+ interviewdiscuss + ", medicaldiscuss=" + medicaldiscuss + "]";
	}

	private int disabled; //장애유형
    
    private int disabledGrade; //장애등급
    
	private int birth;
	
	private int ageTerm;


	private float korean;  
    
	private float english;
	
	private float math;
	
	private float oose1;
	
	private float bioose1;
	
	private float yangson1;
	
	private float oose2;
	
	private float bioose2;
	
	private float oose3;
	
	private float bioose3;
	
	private float kead2;
	
	private float simri;
	
	private float interview;
	
	private String testdiscuss;
	
	private String interviewdiscuss;
	
	private String medicaldiscuss;

	public int getSex() {
		return sex;
	}

	public void setSex(int sex) {
		this.sex = sex;
	}

	public int getDisabled() {
		return disabled;
	}

	public void setDisabled(int disabled) {
		this.disabled = disabled;
	}

	public int getDisabledGrade() {
		return disabledGrade;
	}

	public void setDisabledGrade(int disabledGrade) {
		this.disabledGrade = disabledGrade;
	}

	public int getBirth() {
		return birth;
	}

	public void setBirth(int birth) {
		this.birth = birth;
	}

    
    public int getAgeTerm() {
		return ageTerm;
	}

	public void setAgeTerm(int ageTerm) {
		this.ageTerm = ageTerm;
	}
	
	public float getKorean() {
		return korean;
	}

	public void setKorean(float korean) {
		this.korean = korean;
	}

	public float getEnglish() {
		return english;
	}

	public void setEnglish(float english) {
		this.english = english;
	}

	public float getMath() {
		return math;
	}

	public void setMath(float math) {
		this.math = math;
	}

	public float getOose1() {
		return oose1;
	}

	public void setOose1(float oose1) {
		this.oose1 = oose1;
	}

	public float getBioose1() {
		return bioose1;
	}

	public void setBioose1(float bioose1) {
		this.bioose1 = bioose1;
	}

	public float getYangson1() {
		return yangson1;
	}

	public void setYangson1(float yangson1) {
		this.yangson1 = yangson1;
	}

	public float getOose2() {
		return oose2;
	}

	public void setOose2(float oose2) {
		this.oose2 = oose2;
	}

	public float getBioose2() {
		return bioose2;
	}

	public void setBioose2(float bioose2) {
		this.bioose2 = bioose2;
	}

	public float getOose3() {
		return oose3;
	}

	public void setOose3(float oose3) {
		this.oose3 = oose3;
	}

	public float getBioose3() {
		return bioose3;
	}

	public void setBioose3(float bioose3) {
		this.bioose3 = bioose3;
	}

	public float getKead2() {
		return kead2;
	}

	public void setKead2(float kead2) {
		this.kead2 = kead2;
	}

	public float getSimri() {
		return simri;
	}

	public void setSimri(float simri) {
		this.simri = simri;
	}

	public float getInterview() {
		return interview;
	}

	public void setInterview(float interview) {
		this.interview = interview;
	}

	public String getTestdiscuss() {
		return testdiscuss;
	}

	public void setTestdiscuss(String testdiscuss) {
		this.testdiscuss = testdiscuss;
	}

	public String getInterviewdiscuss() {
		return interviewdiscuss;
	}

	public void setInterviewdiscuss(String interviewdiscuss) {
		this.interviewdiscuss = interviewdiscuss;
	}

	public String getMedicaldiscuss() {
		return medicaldiscuss;
	}

	public void setMedicaldiscuss(String medicaldiscuss) {
		this.medicaldiscuss = medicaldiscuss;
	}
	

	    	
}
