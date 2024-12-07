package com.klu.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.springboot.entity.Course;
import com.klu.springboot.repository.CourseRepository;

import jakarta.websocket.server.ServerEndpoint;

@Service
public class CourseServiceImplementation  implements CourseService{

	@Autowired
	private CourseRepository  courseRepository;
	
	public String addcourse(Course c) {
		courseRepository.save(c);
		return "course added";
	}

	
	public List<Course> viewallcourses() {
		return courseRepository.findAll();
	}

}
