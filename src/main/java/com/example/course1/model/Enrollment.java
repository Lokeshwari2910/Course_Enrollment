package com.example.course1.model;



	import jakarta.persistence.Entity;
	import jakarta.persistence.GeneratedValue;
	import jakarta.persistence.GenerationType;
	import jakarta.persistence.Id;
    import jakarta.persistence.Table;

	@Entity
	@Table(name = "enrollments")
	public class Enrollment {

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int id;

	    private String studentEmail;
	    private String courseName;

	    // Getters and Setters
	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    public String getStudentEmail() {
	        return studentEmail;
	    }

	    public void setStudentEmail(String studentEmail) {
	        this.studentEmail = studentEmail;
	    }

	    public String getCourseName() {
	        return courseName;
	    }

	    public void setCourseName(String courseName) {
	        this.courseName = courseName;
	    }
	}



