package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.pojo.User;

public interface UserMapper {
	User findUserByNameAndPsw(@Param("userName") String userName,@Param("userPsw") String userPsw);

	User findUserByName(String userName);
	
	List<User> findAllUser();


	int addNewUser(User user);

	int updateUserPswById(User user);

	int updateUserById(User user);

	int updateUserPhotoById(String userId, String userPhoto);
	
}
