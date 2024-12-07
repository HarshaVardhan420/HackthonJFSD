package com.klu.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klu.springboot.entity.Faculty;
import com.klu.springboot.entity.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {
	@Query("select s from Student s  where s.id=?1 and s.password=?2")
	public Student studentlogin(int id,String pwd);
}
