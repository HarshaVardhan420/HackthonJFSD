package com.klu.springboot.service;

import com.klu.springboot.entity.Faculty;
import com.klu.springboot.entity.Student;

public interface StudentService {
public String insertstudent(Student s);
public Student studentlogin(int id,String pwd);
public String UpdateStudentProfile(Student s);
}
