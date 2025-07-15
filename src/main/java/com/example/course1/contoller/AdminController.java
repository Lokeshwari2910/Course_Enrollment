package com.example.course1.contoller;

import com.example.course1.model.Enrollment;
import com.example.course1.repository.EnrollmentRepository;

import jakarta.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class AdminController {

    @Autowired
    private EnrollmentRepository enrollmentRepository;

    // Show Admin Login Page
    @GetMapping("/admin")
    public String showAdminLoginPage() {
        return "admin-login"; // JSP: /pages/admin-login.jsp
    }

    // Handle Admin Login
    @PostMapping("/admin-login")
    public String handleAdminLogin(
            @RequestParam String username,
            @RequestParam String password,
            HttpSession session) {

        if ("admin".equals(username) && "admin123".equals(password)) {
            session.setAttribute("adminLoggedIn", true);
            return "redirect:/admin/enrollments";
        } else {
            return "redirect:/admin?error=true";
        }
    }

    // View All Enrollments
    @GetMapping("/admin/enrollments")
    public String viewAllEnrollments(Model model, HttpSession session) {
        Boolean isAdmin = (Boolean) session.getAttribute("adminLoggedIn");

        if (Boolean.TRUE.equals(isAdmin)) {
            List<Enrollment> allEnrollments = enrollmentRepository.findAll();
            model.addAttribute("enrollments", allEnrollments);
            return "admin-enrollments"; // JSP: /pages/admin-enrollments.jsp
        } else {
            return "redirect:/admin";
        }
    }

    // Admin Logout
    @GetMapping("/admin/logout")
    public String logoutAdmin(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }
}
