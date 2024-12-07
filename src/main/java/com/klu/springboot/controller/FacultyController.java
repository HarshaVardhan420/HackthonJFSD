package com.klu.springboot.controller;

import java.util.Base64;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klu.springboot.entity.Admin;
import com.klu.springboot.entity.Course;
import com.klu.springboot.entity.Faculty;
import com.klu.springboot.service.CaptchaServiceImpl;
import com.klu.springboot.service.CourseService;
import com.klu.springboot.service.FacultyService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class FacultyController {
	
	@Autowired
	private FacultyService facultyService;
	
	@Autowired
	private CourseService courseService;
	@Autowired
	private CaptchaServiceImpl captchaService ;
	@GetMapping("/facultyhome")
	  public ModelAndView home()
	  {
	    ModelAndView mv = new ModelAndView("facultyhome");
	    return mv;
	  }
	
	@GetMapping("/facultyLogin")
	public String facultylogin() {
		return "facultyLogin";
	}
	
	
	@GetMapping("/facultyprofile")
	public String facultyprofile() {
		return "facultyprofile";
	}
	
	

	@GetMapping("/course")
	public String course() {
		return "course";
	}
	
	
	
	
	
	@PostMapping("facultylogin")

	public ModelAndView checkfacultylogin(HttpServletRequest request)
	{
	  String auname = request.getParameter("auname");
	  String apwd = request.getParameter("apwd");
	  
	  Faculty faculty = facultyService.facultylogin(auname, apwd);
	  
	  ModelAndView mv=new ModelAndView();
	  
	  if(faculty !=null)
	  {
	    mv.setViewName("facultyhome");
		 
	    }
	  else
	  {
	    mv.setViewName("facultyloginfail");
	    mv.addObject("message", "Login Failed");
		 
	  }
	  return mv;
	}
	
	@PostMapping("/registerFaculty")
	public ModelAndView registerFaculty(HttpServletRequest request) {
	    
	    String name = request.getParameter("name");
	    String username = request.getParameter("username");
	    String password = request.getParameter("password");
	    String email = request.getParameter("email");
	    String contactNo = request.getParameter("contactno");
	   

	   
	    Faculty faculty = new Faculty();
	    faculty.setName(name);
	    faculty.setUsername(username);
	    faculty.setPassword(password);
	    faculty.setEmail(email);
	    faculty.setContactno(contactNo);
	    

	    
	    String message = facultyService.insertfaculty(faculty);

	    
	    ModelAndView mv = new ModelAndView("facultyregsuccess");
	    mv.addObject("message", message);

	    return mv;
	}
	
	
	
	
	private String generatedOtp;
    @GetMapping("/getcaptcha/{length}")
    @ResponseBody
    public String getCaptcha(@PathVariable("length") int captchaLength)
    {
      
      return Base64.getEncoder().encodeToString(captchaService.generateCaptcha(captchaLength));
    }


@PostMapping("/validate")
public String validateCaptcha(HttpServletRequest request) {
  String captchaInput = request.getParameter("Captcha");
    boolean isValid = captchaService.validateCaptcha(captchaInput);
    if(isValid)
      return "Verified";
    else
      return "Wrong Captcha";
}
	


@GetMapping("/viewallcourse")
public ModelAndView viewallcourses() {
	ModelAndView mv = new ModelAndView();
	  List<Course> course = courseService.viewallcourses();
	  mv.setViewName("viewallcourse");
	  mv.addObject("course",course);
	   return mv;
}
	

}
