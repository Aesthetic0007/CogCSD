package com.example.BookStore.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.BookStore.model.SignUpModel;

@Repository
public interface SignUpRepo extends JpaRepository<SignUpModel, String> {
	SignUpModel findByUserName(String username);
}
