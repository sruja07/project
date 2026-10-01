package com.project.cyberpro;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.project.cyberpro.entity.User;

@Service
public class UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public UserService(UserRepository userRepository,
                       PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
    }

    public User createUser(String userName, String password) {

        User user = new User();

        user.setUserName(userName);

        // Automatically hash the password
        user.setUserPassword(passwordEncoder.encode(password));

        return userRepository.save(user);
    }
}