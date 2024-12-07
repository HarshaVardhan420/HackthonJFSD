package com.klu.springboot.controller;

import java.util.Base64;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.klu.springboot.entity.Faculty;
import com.klu.springboot.entity.Student;
import com.klu.springboot.service.CaptchaServiceImpl;
import com.klu.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class StudentController {

	
	@Autowired
	private StudentService studentService;
	@Autowired
	private CaptchaServiceImpl captchaService;
	@PostMapping("/registerStudent")
	public ModelAndView registerStudent(HttpServletRequest request) {

	    int id = Integer.parseInt(request.getParameter("id"));
	    String name = request.getParameter("name");
	    String fatherName = request.getParameter("fatherName");
	    String motherName = request.getParameter("motherName");
	    String contact = request.getParameter("contact");
	    String address = request.getParameter("address");
	    String password = request.getParameter("password");
	    String status = request.getParameter("status");

	    Student student = new Student();
	    student.setId(id);
	    student.setName(name);
	    student.setFatherName(fatherName);
	    student.setMotherName(motherName);
	    student.setContact(contact);
	    student.setAddress(address);
	    student.setPassword(password);
	    student.setStatus(status);

	    String message = studentService.insertstudent(student);

	    ModelAndView mv = new ModelAndView("studentregsuccess");
	    mv.addObject("message", message);

	    return mv;
	}
	
	
	@GetMapping("/studentLogin")
	public String studentLogin() {
		return "studentLogin";
	}
	
	
	@PostMapping("studentlogin")

	public ModelAndView checkstudentlogin(HttpServletRequest request)
	{
	  int id = Integer.parseInt(request.getParameter("id"));
	  String apwd = request.getParameter("apwd");
	  
	  Student student = studentService.studentlogin(id, apwd);
	  
	  ModelAndView mv=new ModelAndView();
	  
	  if(student !=null)
	  {
	    mv.setViewName("studenthome");
		 
	    }
	  else
	  {
	    mv.setViewName("studentloginfail");
	    mv.addObject("message", "Login Failed");
		 
	  }
	  return mv;
	}
	
	
	private String generatedOtp;
    @GetMapping("/getstudentcaptcha/{length}")
    @ResponseBody
    public String getCaptcha(@PathVariable("length") int captchaLength)
    {
       
      return Base64.getEncoder().encodeToString(captchaService.generateCaptcha(captchaLength));
    }


@PostMapping("/validatestudent")
public String validateCaptcha(HttpServletRequest request) {
  String captchaInput = request.getParameter("Captcha");
    boolean isValid = captchaService.validateCaptcha(captchaInput);
    if(isValid)
      return "Verified";
    else
      return "Wrong Captcha";
}

}
