/*
package com.example.BookStore.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.BookStore.dao.CustomerDetailsRepo;
import com.example.BookStore.model.CustomerDetails;

@Service
public class AdminService {
	@Autowired
	CustomerDetailsRepo customerDetailsrepo;
	
	public List<CustomerDetails> viewAllCustomers(){
		return customerDetailsrepo.findAll();
	}

}
*/


package com.example.BookStore.service;

import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.BookStore.dao.CustomerDetailsRepo;
import com.example.BookStore.model.CustomerDetails;

@Service
public class AdminService {
    private static final Logger logger = LoggerFactory.getLogger(AdminService.class);
    @Autowired
    CustomerDetailsRepo customerDetailsrepo;
    
    public List<CustomerDetails> viewAllCustomers(){
        logger.info("Fetching all customers");
        return customerDetailsrepo.findAll();
    }
}
