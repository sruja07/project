package com.project.cyberpro;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/dashboard")
    public String dashboard(Authentication authentication) {

        if (authentication.getAuthorities().stream()
                .anyMatch(a -> a.getAuthority().equals("ROLE_ADMIN"))) {

            return "redirect:/admin/dashboard";
        }

        if (authentication.getAuthorities().stream()
                .anyMatch(a -> a.getAuthority().equals("ROLE_USER"))) {

            return "redirect:/user/dashboard";
        }

        return "redirect:/login?error=true";
    }

    @GetMapping("/admin/dashboard")
    public String adminDashboard() {
        return "admin-dashboard";
    }

    @GetMapping("/user/dashboard")
    public String userDashboard() {
        return "user-dashboard";
    }
}