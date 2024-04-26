package com.example.demo.test;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.when;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;

import com.example.BookStore.dao.LoginRepo;
import com.example.BookStore.model.LoginModel;
import com.example.BookStore.service.LoginService;

public class LoginServiceTest {

	@Mock

	private LoginRepo loginRepo;

	@InjectMocks

	private LoginService loginService;

	@BeforeEach

	public void setUp() {

		MockitoAnnotations.openMocks(this);

	}

	@Test

	public void testValidUser_ValidCredentials() {

		LoginModel mockUser = new LoginModel();

		mockUser.setUserName("testUser");

		mockUser.setPassword("testPassword");

		mockUser.setRole("testRole");

		when(loginRepo.findByUserName("testUser")).thenReturn(mockUser);

		boolean isValid = loginService.validateUser("testUser", "testPassword", "testRole");

		assertTrue(isValid);

	}

	@Test

	public void testValidUser_InvalidUsername() {

		when(loginRepo.findByUserName("testUser")).thenReturn(null);

		boolean isValid = loginService.validateUser("testUser", "testPassword", "testRole");

		assertFalse(isValid);

	}

	@Test

	public void testValidUser_InvalidPassword() {

		LoginModel mockUser = new LoginModel();

		mockUser.setUserName("testUser");

		mockUser.setPassword("testPassword");

		mockUser.setRole("testRole");

		when(loginRepo.findByUserName("testUser")).thenReturn(mockUser);

		boolean isValid = loginService.validateUser("testUser", "wrongPassword", "testRole");

		assertFalse(isValid);

	}

	@Test

	public void testValidUser_InvalidRole() {

		LoginModel mockUser = new LoginModel();

		mockUser.setUserName("testUser");

		mockUser.setPassword("testPassword");

		mockUser.setRole("testRole");

		when(loginRepo.findByUserName("testUser")).thenReturn(mockUser);

		boolean isValid = loginService.validateUser("testUser", "testPassword", "wrongRole");

		assertFalse(isValid);

	}

}