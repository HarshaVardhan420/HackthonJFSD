package com.klu.springboot.service;

import com.klu.springboot.entity.Faculty;

public interface FacultyService {
public String insertfaculty(Faculty f);
public Faculty facultylogin(String uname,String pwd);
public String UpdateFacultyProfile(Faculty f);

}
