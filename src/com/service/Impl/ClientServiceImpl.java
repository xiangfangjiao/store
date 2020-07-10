package com.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Service;

import com.dao.ComeMapper;
import com.dao.LevelMapper;
import com.dao.UserMapper;
import com.pojo.Come;
import com.pojo.Goods;
import com.pojo.Level;
import com.pojo.User;
import com.service.ClientService;

@Service("clientService")
public class ClientServiceImpl implements ClientService {
	@Resource
	private UserMapper userMapper;
	@Resource
	private LevelMapper levelMapper;
	@Resource
	private ComeMapper comeMapper;
	// 根据 userName 查找用户
	@Override
	public User findUserByName1(String userName) {
		return userMapper.findUserByName(userName);
	}
	// 根据 levelMessage 查找对应 Level
	@Override
	public Level findLevelByMessage(String levelMessage) {
		return levelMapper.findLevelByMessage(levelMessage);
	}
	// 添加新的用户
	@Override
	public int addNewUser(User user) {
		// 加密密码
		user.setUserPsw(DigestUtils.md5Hex(user.getUserPsw()));
		return userMapper.addNewUser(user);
	}
	// 通过 userName 修改用户密码
	@Override
	public int updateUserPswById(User user) {
		// 加密密码
		user.setUserPsw(DigestUtils.md5Hex(user.getUserPsw()));
		return userMapper.updateUserPswById(user);
	}
	// 通过 userName 修改 usrAlice、userSex和userEmail 
	@Override
	public int updateUserById(User user) {
		return userMapper.updateUserById(user);
	}
	// 根据 userName 修改 userPhoto
	@Override
	public int updateUserPhotoById(String userName, String userPhoto) {
		return userMapper.updateUserPhotoById(userName, userPhoto);
	}
	
	@Override
	public User findUserByName(String userName) {
		return userMapper.findUserByName(userName);
	}
	@Override
	public List<Goods> getItemByXxx(Goods goods) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public List<User> getuserByXxx(List<User> user) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public int addNewCome(Come come) {
		return comeMapper.addNewCome(come);
		
	}
	@Override
	public List<Goods> getItemByXxx() {
		// TODO Auto-generated method stub
		return null;
	}
	
}







