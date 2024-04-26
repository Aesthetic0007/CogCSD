package com.example.BookStore.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.BookStore.service.LoginService;
import com.example.BookStore.service.SignupService;

@Controller
public class LoginController {
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private SignupService signupService;
	
	@GetMapping("/")
	public String showHome() {
		return "home";
	}

	@GetMapping("/home")
	public String showHomePage() {
		return "home";
	}

	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@GetMapping("/logout")
	public String logout() {
		return "login";
	}
	
	@GetMapping("/signUp")
	public String signup() {
		System.out.println("inside signup");
		return "signup";
	}
	
	@PostMapping("/signUp")
	public String signUpPage(@RequestParam("username") String username, @RequestParam("password") String password, 
			@RequestParam("customerName") String customerName, @RequestParam("email") String email, @RequestParam("phone") String phone, @RequestParam("role") String role) {
		boolean isCreated = signupService.createUser(username, password, customerName, email, phone, role);
		return isCreated ? "login" : "signup";
	}


	
	@PostMapping("/loginDetail")
	public String loginUser(@RequestParam("username") String username, @RequestParam("password") String password,
	        @RequestParam("role") String role) {
	    boolean isValid = false;
	    if (role.equals("admin")) {
	        isValid = loginService.validateUser(username, password, role);
	    } else if (role.equals("customer")) {
	        isValid = signupService.validateCustomer(username, password);
	    }
	    if (isValid) {
	        return role + "Login";
	    }
	    return "login";
	}

}
	