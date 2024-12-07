package com.klu.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klu.springboot.entity.Faculty;
import com.klu.springboot.repository.FacultyRepository;

@Service
public class FacultyServiceImplementation implements FacultyService {

	@Autowired 
	private FacultyRepository facultyRepository;
	
	public String insertfaculty(Faculty f) {
		facultyRepository.save(f);
		return "Faculty Inserted Successfully";
	}

	
	public Faculty facultylogin(String uname, String pwd) {
	 return 	facultyRepository.facultylogin(uname, pwd);
	}


	
	public String UpdateFacultyProfile(Faculty f) 
	{
		Faculty faculty = facultyRepository.findById(f.getId()).get();
		
		faculty.setName(f.getName());
		faculty.setEmail(f.getEmail());
		faculty.setContactno(f.getContactno());
		faculty.setPassword(f.getPassword());
		
		facultyRepository.save(faculty);
		
		return "Updated Successfully";
	}

}
