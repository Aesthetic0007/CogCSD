package com.example.demo.test;

/*package com.example.demo.test;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.example.BookStore.dao.AdminRepo;
import com.example.BookStore.model.CustomerDetails;
import com.example.BookStore.service.AdminService;

public class AdminServiceTest {

	@Mock

	private AdminRepo adminRepo;

	@InjectMocks

	private AdminService adminService;

	@BeforeEach

	public void setUp() {

		MockitoAnnotations.openMocks(this);

	}

	@Test

	public void testViewAllCustomers() {

		List<CustomerDetails> customers = new ArrayList<>();

		customers.add(new CustomerDetails());

		when(AdminRepo.findAll()).thenReturn(customers);

		List<CustomerDetails> result = adminService.viewAllCustomers();

		assertEquals(customers.size(), result.size());

	}

}*/
//import package com.example.BookStore.service;

import static org.junit.jupiter.api.Assertions.assertEquals;

import static org.mockito.Mockito.*;

import java.util.ArrayList;

import java.util.List;

import org.junit.jupiter.api.BeforeEach;

import org.junit.jupiter.api.Test;

import org.mockito.InjectMocks;

import org.mockito.Mock;

import org.mockito.MockitoAnnotations;

import com.example.BookStore.dao.AdminRepo;

import com.example.BookStore.model.CustomerDetails;
import com.example.BookStore.service.AdminService;

public class AdminServiceTest {

	@Mock

	private AdminRepo adminRepo;

	@InjectMocks

	private AdminService adminService;

	@BeforeEach

	public void setUp() {

		MockitoAnnotations.openMocks(this);

	}

	@Test

	public void testViewAllCustomers() {

		List<CustomerDetails> customers = new ArrayList<>();

		customers.add(new CustomerDetails());

		when(adminRepo.findAll()).thenReturn(customers);

		List<CustomerDetails> result = adminService.viewAllCustomers();

		assertEquals(customers.size(), result.size());

	}

}