package com.example.BookStore.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.BookStore.model.LoginModel;

@Repository
public interface LoginRepo extends JpaRepository<LoginModel,String>{
	LoginModel findByUserName(String username);
}
