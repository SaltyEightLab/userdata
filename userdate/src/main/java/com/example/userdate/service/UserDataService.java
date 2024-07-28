package com.example.userdate.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.userdate.model.UserData;
import com.example.userdate.repository.UserDetaRepository;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UserDataService {

    @Autowired
    private UserDetaRepository userDetaRepository;

    // ユーザーIDに基づいてユーザーデータを検索
    public List<UserData> findUserDataByEmail(String email) {
        return userDetaRepository.findByEmail(email);
    }

    // ページングをサポートするメソッドを追加
    public Page<UserData> findUserDataByEmailWithPaging(String email, int page, int size) {
        Pageable pageable = PageRequest.of(page, size);
        return userDetaRepository.findByEmailOrderByDataDateDesc(email, pageable);
    }

    // ユーザーデータを保存
    public UserData saveUserData(UserData userData) {
        return userDetaRepository.save(userData);
    }

    // ユーザーデータを更新
    public UserData updateUserData(UserData userData) {
        // 既存のデータを確認
        Optional<UserData> existingData = userDetaRepository.findById(userData.getId());
        if (existingData.isPresent()) {
            // データが存在する場合は更新
            return userDetaRepository.save(userData);
        } else {
            // データが存在しない場合は例外を投げる
            throw new RuntimeException("User data not found with id: " + userData.getId());
        }
    }

    // ユーザーデータを削除
    public void deleteUserData(Long id) {
        userDetaRepository.deleteById(id);
    }

        @Transactional
    public void deleteUserDataByHashValue(UUID hashValue) {
        UserData userData = userDetaRepository.findByHashValue(hashValue);
        if (userData != null) {
            userDetaRepository.delete(userData);
        }
    }
}