package com.example.BookStore.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.BookStore.model.CustomerDetails;

@Repository
public interface AdminRepo extends JpaRepository<CustomerDetails,Integer>{
	public List<CustomerDetails> findAll();

}
