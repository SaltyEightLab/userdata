package com.example.userdate.repository;

import com.example.userdate.model.UserData;

import java.util.List;
import java.util.UUID;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserDetaRepository extends JpaRepository<UserData, Long> {
    // UUIDに基づいてユーザーデータを検索するメソッドを追加
    List<UserData> findByEmail(String email);

    // ページングをサポートするメソッドを追加
    Page<UserData> findByEmailOrderByDataDateDesc(String email, Pageable pageable);

    // ハッシュ値に基づいてユーザーデータを検索するメソッドを追加
    UserData findByHashValue(UUID hashValue);

    // ハッシュ値に基づいてユーザーデータを削除するメソッドを追加
    void deleteByHashValue(UUID hashValue);
}