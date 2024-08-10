package com.example.userdate.controller;

import com.example.userdate.service.UserDataService;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

import java.util.UUID;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.*;

class UserDataControllerTest {

    @Mock
    private UserDataService userDataService;

    @InjectMocks
    private UserDataController userDataController;

    @BeforeEach
    void setUp() {
        MockitoAnnotations.openMocks(this);
    }

    @Test
    void deleteUserDataByHashValue_ValidUUID_ReturnsOk() {
        // 準備
        String validHashValue = UUID.randomUUID().toString();

        // 実行
        ResponseEntity<Void> response = userDataController.deleteUserDataByHashValue(validHashValue);

        // 検証
        assertEquals(HttpStatus.OK, response.getStatusCode());
        verify(userDataService, times(1)).deleteUserDataByHashValue(UUID.fromString(validHashValue));
    }

    @Test
    void deleteUserDataByHashValue_InvalidUUID_ReturnsBadRequest() {
        // 準備
        String invalidHashValue = "invalid-uuid";

        // 実行
        ResponseEntity<Void> response = userDataController.deleteUserDataByHashValue(invalidHashValue);

        // 検証
        assertEquals(HttpStatus.BAD_REQUEST, response.getStatusCode());
        verify(userDataService, never()).deleteUserDataByHashValue(any(UUID.class));
    }
}