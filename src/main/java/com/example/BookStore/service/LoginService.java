/*package com.example.BookStore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.BookStore.dao.LoginRepo;
import com.example.BookStore.model.LoginModel;

@Service
public class LoginService {
	@Autowired
	private LoginRepo repo;

	public boolean validateUser(String username, String password, String role) {
		LoginModel user = repo.findByUserName(username);
		return user != null && user.getPassword().equals(password) && user.getRole().equals(role);
	}

}
*/


package com.example.BookStore.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.example.BookStore.dao.LoginRepo;
import com.example.BookStore.model.LoginModel;

@Service
public class LoginService {
    private static final Logger logger = LoggerFactory.getLogger(LoginService.class);
    @Autowired
    private LoginRepo repo;

    public boolean validateUser(String username, String password, String role) {
        logger.info("Validating user");
        LoginModel user = repo.findByUserName(username);
        return user != null && user.getPassword().equals(password) && user.getRole().equals(role);
    }
}
