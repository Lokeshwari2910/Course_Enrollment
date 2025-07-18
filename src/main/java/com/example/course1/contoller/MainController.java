package com.example.course1.contoller;

import com.example.course1.model.Course;
import com.example.course1.model.Enrollment;
import com.example.course1.model.Student;
import com.example.course1.repository.CourseRepository;
import com.example.course1.repository.EnrollmentRepository;
import com.example.course1.repository.StudentRepository;

import jakarta.annotation.PostConstruct;
import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@Controller
public class MainController {

    @Autowired
    private StudentRepository studentRepo;

    @Autowired
    private CourseRepository courseRepo;

    @Autowired
    private EnrollmentRepository enrollRepo;

    // Load courses at app startup
    @PostConstruct
    public void initCourses() {
        if (courseRepo.count() == 0) {
            List<String> courses = Arrays.asList(
                "Java Programming",
                "Web Development",
                "Data Structures",
                "Operating Systems",
                "Machine Learning"
            );
            for (String name : courses) {
                Course course = new Course();
                course.setCourseName(name);
                courseRepo.save(course);
            }
        }
    }

    // Show login page
    @GetMapping("/")
    public String showLoginPage() {
        return "login"; // JSP file: /pages/login.jsp
    }
    
 // ✅ Student Login form page
    @GetMapping("/student-login")
    public String studentLoginPage() {
        return "student-login"; // JSP file: student-login.jsp
    }

    // Handle login or register
    @PostMapping("/login")
    public String login(
            @RequestParam String username,
            @RequestParam String email,
            @RequestParam String password,
            HttpSession session) {

        Student student = studentRepo.findByEmailAndPassword(email, password);
        if (student == null) {
            student = new Student();
            student.setUsername(username);
            student.setEmail(email);
            student.setPassword(password);
            studentRepo.save(student);
        }

        session.setAttribute("email", email);
        session.setAttribute("username", username);
        return "redirect:/courses";
    }

    // Show all available courses
    @GetMapping("/courses")
    public String showCourses(Model model) {
        List<Course> allCourses = courseRepo.findAll();
        model.addAttribute("courses", allCourses);
        return "course-list"; // JSP file: /pages/course-list.jsp
    }

    // Show enroll page
    @GetMapping("/enroll")
    public String enrollPage(
            @RequestParam("courseName") String courseName,
            Model model,
            HttpSession session) {

        model.addAttribute("courseName", courseName);
        model.addAttribute("email", session.getAttribute("email"));
        model.addAttribute("username", session.getAttribute("username"));
        return "enroll-course"; // JSP file: /pages/enroll-course.jsp
    }

    // Save enrollment
    @PostMapping("/enroll")
    public String saveEnrollment(
            @RequestParam String email,
            @RequestParam String courseName) {

        Enrollment enroll = new Enrollment();
        enroll.setStudentEmail(email);
        enroll.setCourseName(courseName);
        enrollRepo.save(enroll);
        return "redirect:/courses";
    }

    // View enrolled courses
    @GetMapping("/my-courses")
    public String myCourses(Model model, HttpSession session) {
        String email = (String) session.getAttribute("email");
        List<Enrollment> enrolled = enrollRepo.findByStudentEmail(email);
        model.addAttribute("myCourses", enrolled);
        return "enrolled-courses"; // JSP file: /pages/enrolled-courses.jsp
    }
   

}
