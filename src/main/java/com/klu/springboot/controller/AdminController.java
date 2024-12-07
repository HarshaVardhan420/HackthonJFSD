package com.klu.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klu.springboot.entity.Admin;
import com.klu.springboot.entity.Faculty;
import com.klu.springboot.entity.Student;
import com.klu.springboot.service.AdminService;
import com.klu.springboot.service.FacultyService;
import com.klu.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private FacultyService facultyService;
	
	@Autowired
	private StudentService studentService;
	
@GetMapping("/")
public String home() {
	return "home";
}


@GetMapping("/about")
public String about() {
	return "about";
}


@GetMapping("/contact")
public String contact() {
	return "contact";
}



@GetMapping("/login")
public String login() {
	return "login";
}



@GetMapping("/UpdateFacultyProfile")
public String UpdateFacultyProfile() {
	return "UpdateFacultyProfile";
}

@GetMapping("/UpdateStudentProfile")
public String UpdateStudentProfile() {
	return "UpdateStudentProfile";
}



@PostMapping("updateFaculty")
public ModelAndView RegisterFaculty(HttpServletRequest request)
{
	ModelAndView mv=new ModelAndView();
	try {
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	
	String pwd = request.getParameter("password");
	String email = request.getParameter("email");
	String contact = request.getParameter("contactno");
	
	Faculty f=new Faculty();
	 		
	f.setId(id);
	f.setName(name);
	
	f.setPassword(pwd);
	f.setEmail(email);
	f.setContactno(contact);
	
	
	String msg = facultyService.UpdateFacultyProfile(f);
	mv.setViewName("facultyupdatesuccess");
	mv.addObject("message",msg);
	} catch (Exception e) {
        e.printStackTrace(); 
    }
	return mv;
	
}




@PostMapping("updateStudent")
public ModelAndView updateStudent(HttpServletRequest request)
{
	ModelAndView mv=new ModelAndView();
	try {
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	
	
	String address = request.getParameter("address");
	String contact = request.getParameter("contactno");
	
	Student s=new Student();
	 		
	s.setId(id);
	s.setName(name);
	s.setAddress(address);
	s.setContact(contact);
	
	
	String msg = studentService.UpdateStudentProfile(s);
	mv.setViewName("studentupdatesuccess");
	mv.addObject("message",msg);
	} catch (Exception e) {
        e.printStackTrace(); 
    }
	return mv;
	
}


@PostMapping("checkadminlogin")

public ModelAndView checkadminlogin(HttpServletRequest request)
{
  String auname = request.getParameter("auname");
  String apwd = request.getParameter("apwd");
  
  Admin admin = adminService.checkadminlogin(auname, apwd);
  
  ModelAndView mv=new ModelAndView();
  
  if(admin !=null)
  {
    mv.setViewName("adminhome");
	 
    }
  else
  {
    mv.setViewName("adminloginfail");
    mv.addObject("message", "Login Failed");
	 
  }
  return mv;
}





@GetMapping("/home")
public String adminhome() {
	return "adminhome";
}



@GetMapping("/viewallstudents")
public String viewallstudents() {
	return "viewallstudents";
}





@GetMapping("/viewallfaculty")
public ModelAndView viewallfaculty() {
	ModelAndView mv = new ModelAndView();
	  List<Faculty> faculty = adminService.viewallfaculty();
	  mv.setViewName("viewallfaculty");
	  mv.addObject("faculty",faculty);
	   return mv;
}





@GetMapping("/displayallstudents")
public ModelAndView displayallstudents() {
	ModelAndView mv = new ModelAndView();
	  List<Student> student = adminService.viewallstudent();
	  for(Student s:student)
		  System.out.println(s);
	  mv.setViewName("viewallstudents");
	  mv.addObject("student",student);
	   return mv;
}

@GetMapping("/deletefaculty")
public ModelAndView deletefaculty() {
	ModelAndView mv = new ModelAndView();
	List<Faculty> faculty = adminService.viewallfaculty();
	mv.setViewName("deletefaculty");
	mv.addObject("faculty",faculty);
	return mv;
}

@GetMapping("facultydelte")
public String deleteoperation(@RequestParam("id") int fid)
{
  adminService.deltefaculty(fid);
  
  return "redirect:/deletefaculty"; 
}

@GetMapping("/deletestudent")
public ModelAndView deletestudent() {
	ModelAndView mv = new ModelAndView();
	List<Student> student = adminService.viewallstudent();
	mv.setViewName("deletestudent");
	mv.addObject("student",student);
	return mv;
}



@GetMapping("studentdelete")
public String deletestudent(@RequestParam("id") int fid)
{
  adminService.deltestudent(fid);
  
  return "redirect:/deletestudent"; 
}



@GetMapping("/logout")
public String logout(){
	return "adminlogout";
}


@GetMapping("/facultyregistration")
public String facultyregistration(){
	return "facultyregistration";
}

@GetMapping("/studentregistration")
public String studentregistration(){
	return "studentregistration";
}




}
