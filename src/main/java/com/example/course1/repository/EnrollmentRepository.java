package com.example.course1.repository;




import com.example.course1.model.Enrollment;

import org.springframework.data.jpa.repository.JpaRepository;

	import java.util.List;

	public interface EnrollmentRepository extends JpaRepository<Enrollment, Integer> {
	    List<Enrollment> findByStudentEmail(String studentEmail);
	}


