package com.klu.springboot.service;

import java.util.List;

import com.klu.springboot.entity.Course;

public interface CourseService {
public String addcourse(Course c);
public List<Course>  viewallcourses();
}
