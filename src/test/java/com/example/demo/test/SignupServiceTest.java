/*package com.example.demo.test;

import static org.junit.jupiter.api.Assertions.*;

import static org.mockito.Mockito.*;

import org.junit.jupiter.api.BeforeEach;

import org.junit.jupiter.api.Test;

import org.mockito.InjectMocks;

import org.mockito.Mock;

import org.mockito.MockitoAnnotations;

import com.example.BookStore.dao.AdminRepo;

import com.example.BookStore.dao.LoginRepo;
import com.example.BookStore.model.CustomerDetails;

//import com.example.BookStore.model.CustomerDetails;

import com.example.BookStore.model.LoginModel;
import com.example.BookStore.service.SignupService;

public class SignupServiceTest {

	@Mock
	private LoginRepo loginRepo;

	@Mock
	private AdminRepo adminRepo;

	@InjectMocks
	private SignupService signupService;

	@BeforeEach
	public void setUp() {
		MockitoAnnotations.openMocks(this);
	}

	@Test
	public void testCreateUser_Success() {
		LoginModel user = new LoginModel();
		user.setUserName("testUser");
		user.setPassword("testPassword");
		user.setRole("testRole");
		when(loginRepo.save(user)).thenReturn(user);
		boolean result = signupService.createUser("testUser", "testPassword", "testRole");
		assertTrue(result);
	}

	@Test
	public void testCreateUser_Failure() {
		LoginModel user = new LoginModel();
		user.setUserName("testUser");
		user.setPassword("testPassword");
		user.setRole("testRole");
		when(loginRepo.save(user)).thenReturn(null);
		boolean result = signupService.createUser("testUser", "testPassword", "testRole");
		assertFalse(result);
	}

	@Test
	public void testCustomerDetails_Success() {
		CustomerDetails customer = new CustomerDetails();
		customer.setCustomerName("Test Customer");
		customer.setCustomerEmail("test@example.com");
		customer.setCustomerNumber("1234567890");
		when(adminRepo.save(customer)).thenReturn(customer);
		boolean result = signupService.customerDetails("Test Customer", "test@example.com", "1234567890");
		assertTrue(result);
	}

	@Test
	public void testCustomerDetails_Failure() {
		CustomerDetails customer = new CustomerDetails();
		customer.setCustomerName("Test Customer");
		customer.setCustomerEmail("test@example.com");
		customer.setCustomerNumber("1234567890");
		when(adminRepo.save(customer)).thenReturn(null);
		boolean result = signupService.customerDetails("Test Customer", "test@example.com", "1234567890");
		assertFalse(result);
	}
}
*/


package com.example.demo.test;

import static org.junit.jupiter.api.Assertions.*;
import static org.mockito.Mockito.*;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.example.BookStore.dao.SignUpRepo;
import com.example.BookStore.model.SignUpModel;
import com.example.BookStore.service.SignupService;

public class SignupServiceTest {

	@Mock
	private SignUpRepo signupRepo;

	@InjectMocks
	private SignupService signupService;

	@BeforeEach
	public void setUp() {
		MockitoAnnotations.openMocks(this);
	}

	@Test
	public void testCreateUser_Success() {
		SignUpModel user = new SignUpModel();
		user.setUserName("testUser");
		user.setPassword("testPassword");
		user.setCustomerName("testName");
		user.setCustomerEmail("testEmail");
		user.setCustomerNumber("testNumber");
		user.setRole("testRole");
		when(signupRepo.save(user)).thenReturn(user);
		boolean result = signupService.createUser("testUser", "testPassword", "testName", "testEmail", "testNumber", "testRole");
		assertTrue(result);
	}

	@Test
	public void testCreateUser_Failure() {
		SignUpModel user = new SignUpModel();
		user.setUserName("testUser");
		user.setPassword("testPassword");
		user.setCustomerName("testName");
		user.setCustomerEmail("testEmail");
		user.setCustomerNumber("testNumber");
		user.setRole("testRole");
		when(signupRepo.save(user)).thenReturn(null);
		boolean result = signupService.createUser("testUser", "testPassword", "testName", "testEmail", "testNumber", "testRole");
		assertFalse(result);
	}

	@Test
	public void testUpdateCustomerDetails_Success() {
		SignUpModel existingUser = new SignUpModel();
		existingUser.setUserName("testUser");
		when(signupRepo.findByUserName("testUser")).thenReturn(existingUser);
		boolean result = signupService.updateCustomerDetails("testUser", "testName", "testEmail", "testNumber");
		assertTrue(result);
	}

	@Test
	public void testUpdateCustomerDetails_UserNotFound() {
		when(signupRepo.findByUserName("testUser")).thenReturn(null);
		boolean result = signupService.updateCustomerDetails("testUser", "testName", "testEmail", "testNumber");
		assertFalse(result);
	}

	@Test
	public void testUpdateCustomerDetails_Exception() {
		when(signupRepo.findByUserName("testUser")).thenThrow(new RuntimeException());
		boolean result = signupService.updateCustomerDetails("testUser", "testName", "testEmail", "testNumber");
		assertFalse(result);
	}
}
