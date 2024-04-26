/*
package com.example.BookStore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.BookStore.dao.CustomerDetailsRepo;
//import com.example.BookStore.dao.LoginRepo;
import com.example.BookStore.dao.SignUpRepo;
import com.example.BookStore.model.CustomerDetails;
import com.example.BookStore.model.SignUpModel;

@Service
public class SignupService {
		@Autowired
		private SignUpRepo signupRepository;
		
		@Autowired
		private CustomerDetailsRepo customerDetailsRepo;
		
		@Autowired
		private SignUpModel user;

		public boolean createUser(String username, String password, String customerName, String email,String phone, String role) {
			user.setUserName(username);
			user.setPassword(password);
			user.setCustomerName(customerName);
			user.setCustomerEmail(email);
			user.setCustomerNumber(phone);
			user.setRole(role);
			signupRepository.save(user);
			
			CustomerDetails customer = new CustomerDetails();
	        customer.setCustomerName(customerName);
	        customer.setCustomerEmail(email);
	        customer.setCustomerNumber(phone);
	        // Set any other properties of CustomerDetails if needed

	        // Save the customer details in the CustomerDetails table
	        customerDetailsRepo.save(customer);
	        
			return true;
		}

		public boolean updateCustomerDetails(String username, String customerName, String customerEmail, String customerNumber) {
		    try {
		        SignUpModel existingUser = signupRepository.findByUserName(username);
		        if (existingUser != null) {
		            existingUser.setCustomerName(customerName);
		            existingUser.setCustomerEmail(customerEmail);
		            existingUser.setCustomerNumber(customerNumber);
		            signupRepository.save(existingUser);
		            return true;      
		        } else {
		            // User not found
		            return false;
		        }
		    } catch (Exception e) {
		        // Log the exception here
		        return false;
		    }
		}

		public boolean validateCustomer(String username, String password) {
		    SignUpModel user = signupRepository.findByUserName(username);
		    return user != null && user.getPassword().equals(password);
		}

	}
*/




package com.example.BookStore.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.BookStore.dao.CustomerDetailsRepo;
import com.example.BookStore.dao.SignUpRepo;
import com.example.BookStore.model.CustomerDetails;
import com.example.BookStore.model.SignUpModel;

@Service
public class SignupService {
    private static final Logger logger = LoggerFactory.getLogger(SignupService.class);
    @Autowired
    private SignUpRepo signupRepository;
    
    @Autowired
    private CustomerDetailsRepo customerDetailsRepo;
    
    @Autowired
    private SignUpModel user;

    public boolean createUser(String username, String password, String customerName, String email,String phone, String role) {
        logger.info("Creating a new user");
        user.setUserName(username);
        user.setPassword(password);
        user.setCustomerName(customerName);
        user.setCustomerEmail(email);
        user.setCustomerNumber(phone);
        user.setRole(role);
        signupRepository.save(user);
        
        CustomerDetails customer = new CustomerDetails();
        customer.setCustomerName(customerName);
        customer.setCustomerEmail(email);
        customer.setCustomerNumber(phone);
        // Set any other properties of CustomerDetails if needed

        // Save the customer details in the CustomerDetails table
        customerDetailsRepo.save(customer);
        
        return true;
    }

    public boolean updateCustomerDetails(String username, String customerName, String customerEmail, String customerNumber) {
        logger.info("Updating customer details");
        try {
            SignUpModel existingUser = signupRepository.findByUserName(username);
            if (existingUser != null) {
                existingUser.setCustomerName(customerName);
                existingUser.setCustomerEmail(customerEmail);
                existingUser.setCustomerNumber(customerNumber);
                signupRepository.save(existingUser);
                return true;      
            } else {
                // User not found
                return false;
            }
        } catch (Exception e) {
            // Log the exception here
            logger.error("An error occurred while updating customer details", e);
            return false;
        }
    }

    public boolean validateCustomer(String username, String password) {
        logger.info("Validating customer");
        SignUpModel user = signupRepository.findByUserName(username);
        return user != null && user.getPassword().equals(password);
    }
}
