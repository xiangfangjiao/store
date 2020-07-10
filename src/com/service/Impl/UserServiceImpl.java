package com.service.Impl;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.stereotype.Service;

import com.dao.LevelMapper;
import com.dao.UserMapper;
import com.pojo.Level;
import com.pojo.User;
import com.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	@Resource
	private UserMapper userMapper;
	@Resource
	private LevelMapper levelMapper;
	
	//根据名称和密码查找账号
	
	//显示用户信息
	@Override
	public List<User> findAllUser() {
		return userMapper.findAllUser();
	}

	@Override
	public int updateUserPswById(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	// 根据账户和密码查找对应账户信息
			@Override
			public User findUserByNameAndPsw(String userName, String userPsw) {
				// 对密码加密处理
				User result = userMapper.findUserByNameAndPsw(userName, DigestUtils.md5Hex(userPsw));
				// 判断用户是否被降级处理
				if(result!=null && result.getLevelDown()!=null 
						&& result.getLevelDown().getTime()>new Date().getTime()) {
					String[] levels = {"初级会员","中级会员","高级会员"};
					int index = 0;
					for(int i=0 ; i<levels.length ; i++) {
						if(levels[i].equals(result.getUserLevel().getLevelMessage())) {
							index = i;
							break;
						}
					}
					// 通过 levelMessage 查找 Level
					Level level = levelMapper.findLevelByMessage(levels[index-1]);
					result.setUserLevel(level);
				}
				return result;
			}
}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
