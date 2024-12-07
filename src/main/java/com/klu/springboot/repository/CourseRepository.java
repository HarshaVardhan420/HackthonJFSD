package com.klu.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.klu.springboot.entity.Course;

@Repository
public interface CourseRepository extends JpaRepository<Course, Integer>{
	

}
