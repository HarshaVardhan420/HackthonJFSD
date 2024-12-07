package com.klu.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.springboot.entity.Faculty;
import com.klu.springboot.entity.Student;
import com.klu.springboot.repository.StudentRepository;

@Service
public class StudentServiceImplementation implements StudentService{

	
	
	@Autowired
	private StudentRepository studentRepository;
	public String insertstudent(Student s) {
	 	studentRepository.save(s);
	 	return "Student Inserted";
	}
	
	public Student studentlogin(int id, String pwd) {
	 return	studentRepository.studentlogin(id, pwd);
	}

	
	public String UpdateStudentProfile(Student s) {
		Student student = studentRepository.findById(s.getId()).get();
		
		student.setId(s.getId());
		student.setName(s.getName());
		student.setAddress(s.getAddress());
		student.setContact(s.getContact());
		
		return "Updated Successfully";
	}

}
