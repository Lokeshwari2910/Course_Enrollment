package com.example.course1.repository;


import com.example.course1.model.Course;

import org.springframework.data.jpa.repository.JpaRepository;

	public interface CourseRepository extends JpaRepository<Course, Integer> {
	   // Course findByCourseName(String courseName);
	}


