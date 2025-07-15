package com.example.course1.repository;


import com.example.course1.model.Student;

import org.springframework.data.jpa.repository.JpaRepository;

	public interface StudentRepository extends JpaRepository<Student, Integer> {
	    Student findByEmailAndPassword(String email, String password);
	}



