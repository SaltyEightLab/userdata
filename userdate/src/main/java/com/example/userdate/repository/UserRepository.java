package com.example.userdate.repository;

import com.example.userdate.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    // ユーザー名に基づいてユーザーを検索するメソッド
    List<User> findByUsername(String username);

    // ユーザーのメールアドレスに基づいてユーザーを検索するメソッド
    Optional<User> findByEmail(String email);

    // ユーザーIDに基づいてユーザーを削除するメソッド
    void deleteByEmail(String email);
}

