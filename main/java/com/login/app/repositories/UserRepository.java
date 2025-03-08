package com.login.app.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.login.app.entities.User;
import java.util.List;


public interface UserRepository extends JpaRepository<User, Integer>{
	 User findByEmail(String email);
}
