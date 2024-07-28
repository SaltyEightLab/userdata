package com.example.userdate.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Column;
import java.time.LocalDateTime;  // LocalDateからLocalDateTimeに変更
import java.util.UUID;
import org.hibernate.annotations.UuidGenerator;

@Entity
@Table(name = "user_data")
public class UserData {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false)
    private String email;

    @Column(nullable = false)
    private LocalDateTime dataDate;  // LocalDateからLocalDateTimeに変更

    @Column(nullable = false)
    private String jsonData;

    @Column(nullable = false, columnDefinition = "UUID DEFAULT gen_random_uuid()")
    @UuidGenerator
    private UUID hashValue;

    public UserData() {
        this.hashValue = UUID.randomUUID();
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public LocalDateTime getDataDate() {
        return dataDate;
    }

    public void setDataDate(LocalDateTime dataDate) {
        this.dataDate = dataDate;
    }

    public String getJsonData() {
        return jsonData;
    }

    public void setJsonData(String jsonData) {
        this.jsonData = jsonData;
    }

    public UUID getHashValue() {
        return hashValue;
    }

    public void setHashValue(UUID hashValue) {
        this.hashValue = hashValue;
    }
}