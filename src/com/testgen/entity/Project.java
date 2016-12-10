package com.testgen.entity;

import java.io.Serializable;
import java.util.ArrayList;

public class Project  {
    private int projectid;//????????????
    private String projectname;//????????????
    private String projectcontent;//????????????
    private ArrayList<Position> projectposition;//????????????
    
	public int getProjectid() {
		return projectid;
	}
	public void setProjectid(int projectid) {
		this.projectid = projectid;
	}
	public String getProjectname() {
		return projectname;
	}
	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	public String getProjectcontent() {
		return projectcontent;
	}
	public void setProjectcontent(String projectcontent) {
		this.projectcontent = projectcontent;
	}
	public ArrayList<Position> getProjectposition() {
		return projectposition;
	}
	public void setProjectposition(ArrayList<Position> projectposition) {
		this.projectposition = projectposition;
	}
   
}
