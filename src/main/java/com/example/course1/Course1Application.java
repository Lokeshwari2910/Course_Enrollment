package com.example.course1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class Course1Application {

	public static void main(String[] args) {
		SpringApplication.run(Course1Application.class, args);
		System.out.println("🎉 Course Enrollment System is running on http://localhost:8085");
	}

}

