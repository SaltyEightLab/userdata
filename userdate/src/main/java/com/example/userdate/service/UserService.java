package com.example.userdate.service;

import com.example.userdate.model.User;
import com.example.userdate.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    // 全ユーザーを取得
    public List<User> findAllUsers() {
        return userRepository.findAll();
    }

    // 特定のユーザーをIDで取得
    public Optional<User> findUserByEmail(String email) {
        // Optional.ofNullableを使用して、UserオブジェクトをOptional<User>に変換します。
        return userRepository.findByEmail(email);
    }

    public User saveUser(User user) {
        return userRepository.save(user);
    }

    // ユーザー情報を更新
    public Optional<User> updateUser(String email, User user) {
        return userRepository.findByEmail(email)
            .map(existingUser -> {
                existingUser.setUsername(user.getUsername());
                existingUser.setEmail(user.getEmail());
                return userRepository.save(existingUser);
            });
    }

    // ユーザーを削除
    public void deleteUser(String email) {
        userRepository.deleteByEmail(email);
    }
}

