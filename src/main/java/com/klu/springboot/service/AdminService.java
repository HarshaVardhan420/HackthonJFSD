package com.klu.springboot.service;

import java.util.List;

import com.klu.springboot.entity.Admin;
import com.klu.springboot.entity.Faculty;
import com.klu.springboot.entity.Student;

public interface AdminService {
	  public Admin checkadminlogin(String uname,String pwd);
	  public List<Faculty> viewallfaculty();
	  public List<Student> viewallstudent();
	  public String deltefaculty(int id);
	  public String deltestudent(int id);
}
