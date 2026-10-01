package com.project.cyberpro;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.security.crypto.password.PasswordEncoder;

import com.project.cyberpro.entity.User;

@SpringBootApplication
public class CyberProApplication {

    public static void main(String[] args) {
        SpringApplication.run(CyberProApplication.class, args);
    }

    @Bean
    CommandLineRunner initializeUser(
            UserRepository userRepository,
            PasswordEncoder passwordEncoder) {

        return args -> {

            User user = userRepository
                    .findByUserName("user@abc.com")
                    .orElse(null);

            if (user != null) {

                user.setUserPassword(
                    passwordEncoder.encode("user123")
                );

                userRepository.save(user);

                System.out.println(
                    "USER PASSWORD HASHED SUCCESSFULLY"
                );
            }
        };
    }
}