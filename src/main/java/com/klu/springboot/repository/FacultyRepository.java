package com.klu.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klu.springboot.entity.Admin;
import com.klu.springboot.entity.Faculty;

@Repository
public interface FacultyRepository extends JpaRepository<Faculty, Integer> {
	@Query("select f from Faculty f  where f.username=?1 and f.password=?2")
	public Faculty facultylogin(String uname,String pwd);
}
