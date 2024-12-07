package com.klu.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.springboot.entity.Admin;
import com.klu.springboot.entity.Faculty;
import com.klu.springboot.entity.Student;
import com.klu.springboot.repository.AdminRepository;
import com.klu.springboot.repository.FacultyRepository;
import com.klu.springboot.repository.StudentRepository;

@Service
public class AdminServiceImplementation implements AdminService{

	
	@Autowired
	private AdminRepository adminRepository;
	
	@Autowired
	private FacultyRepository facultyRepository;
	
	@Autowired
	private StudentRepository studentRepository;
	
	public Admin checkadminlogin(String uname, String pwd) {
		
		return adminRepository.checkadminlogin(uname, pwd);
	}

	
	public List<Faculty> viewallfaculty() {
		
		return facultyRepository.findAll();
	}


	
	public List<Student> viewallstudent() {
		return studentRepository.findAll();
	}


	
	public String deltefaculty(int id) {
		facultyRepository.deleteById(id);
		return "Faculty Deleted Successfully";
	}


	
	public String deltestudent(int id) {
		studentRepository.deleteById((long) id);
		return "Student Deleted Successfully";
	}


	
	

}
