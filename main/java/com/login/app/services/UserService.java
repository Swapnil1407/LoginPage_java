package com.login.app.services;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.login.app.entities.User;
import com.login.app.repositories.UserRepository;

@Service
public class UserService {
	
	@Autowired
	private UserRepository userRepository;
	
	public boolean registerUser(User user) {
		try {
			userRepository.save(user);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}
	
	public User loginUser(String email, String password) {
		User validUser = userRepository.findByEmail(email);
		if(validUser!=null && validUser.getPassword().equals(password))
			return validUser;
		return null;
	};
}
