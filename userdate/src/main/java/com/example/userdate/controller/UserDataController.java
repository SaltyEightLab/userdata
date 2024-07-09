package com.example.userdate.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.example.userdate.model.UserData;
import com.example.userdate.service.UserDataService;
import java.util.List;
import org.springframework.data.domain.Page;

@RestController
@RequestMapping("/userdata")
public class UserDataController {

    @Autowired
    private UserDataService userDataService;

    // ユーザーデータを取得
    @GetMapping("/{email}")
    public ResponseEntity<List<UserData>> getUserDataByUserId(@PathVariable String email) {
        List<UserData> userData = userDataService.findUserDataByEmail(email);
        return ResponseEntity.ok(userData);
    }

    // ページングをサポートするエンドポイントを追加
    @GetMapping("/{email}/paged")
    public ResponseEntity<Page<UserData>> getUserDataByEmailPaged(
            @PathVariable String email,
            @RequestParam(defaultValue = "0") int page,
            @RequestParam(defaultValue = "10") int size) {
        Page<UserData> userDataPage = userDataService.findUserDataByEmailWithPaging(email, page, size);
        return ResponseEntity.ok(userDataPage);
    }

    // ユーザーデータを保存
    @PostMapping("/save")
    public ResponseEntity<UserData> saveUserData(@RequestBody UserData userData) {
        // デバッグ用に受け取ったデータをログに出力
        System.out.println("Received userData: " + userData);
    
        UserData savedUserData = userDataService.saveUserData(userData);
        return ResponseEntity.ok(savedUserData);
    }
}