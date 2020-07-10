package com.service;

import java.util.List;

import com.pojo.User;

public interface UserService {
	User findUserByNameAndPsw(String userName,String userPsw);

	int updateUserPswById(User user);
	
	List<User> findAllUser();

	
}
