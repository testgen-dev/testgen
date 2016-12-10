package com.testgen.entity;

import java.util.ArrayList;
import java.util.HashMap;

public class Question {
    private int questionid; //问题ID；
    private String questionname;//问题的名称
    private Character answer;//正确答案
    private HashMap<Character,String> option;//问题的选项
    private int fullscore;//满分
    private int level;//分四个等级   20个题，5＊2＋5＊4＋5＊6＋5＊8＝100 ，1->2，2->4，3->6，4->8
	private ArrayList<Integer>category;//题目所属类别，关联positionid
    public int getQuestionid() {
		return questionid;
	}
	public void setQuestionid(int questionid) {
		this.questionid = questionid;
	}
	public String getQuestionname() {
		return questionname;
	}
	public void setQuestionname(String questionname) {
		this.questionname = questionname;
	}
	public Character getAnswer() {
		return answer;
	}
	public void setAnswer(Character answer) {
		this.answer = answer;
	}
	public HashMap<Character, String> getOption() {
		return option;
	}
	public void setOption(HashMap<Character, String> option) {
		this.option = option;
	}
	public int getFullscore() {
		return fullscore;
	}
	public void setFullscore(int fullscore) {
		this.fullscore = fullscore;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public ArrayList<Integer> getCategory() {
		return category;
	}
	public void setCategory(ArrayList<Integer> category) {
		this.category = category;
	}
    
}
