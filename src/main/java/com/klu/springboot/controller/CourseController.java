package com.klu.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.klu.springboot.entity.Course;
import com.klu.springboot.entity.Faculty;
import com.klu.springboot.service.CourseService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class CourseController {
	
	@Autowired
	private CourseService courseService;
	
	@PostMapping("/registercourse")
	public ModelAndView registerCourse(HttpServletRequest request) {
	    
	    long id = Long.parseLong(request.getParameter("courseId"));
	    String code = request.getParameter("courseCode");
	    String name = request.getParameter("courseName");
	    Course c = new Course();
	    c.setCourseId(id);
	    c.setCourseCode(code);
	    c.setCourseName(name);
	 
	    

	    
	    String message = courseService.addcourse(c);

	    
	    ModelAndView mv = new ModelAndView("courseregsuccess");
	    mv.addObject("message", message);

	    return mv;
	}


}
