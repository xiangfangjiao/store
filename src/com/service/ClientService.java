package com.service;

import java.util.List;

import com.pojo.Come;
import com.pojo.Goods;
import com.pojo.Level;
import com.pojo.User;

public interface ClientService {
	User findUserByName(String userName);
	Level findLevelByMessage(String levelMessage);
	int addNewUser(User user);
	User findUserByName1(String userName);
	int updateUserPswById(User user);
	int updateUserById(User user);
	int updateUserPhotoById(String userName, String userPhoto);
	List<Goods> getItemByXxx();
	List<User> getuserByXxx(List<User> user);
	int addNewCome(Come come);
	List<Goods> getItemByXxx(Goods goods);

}
