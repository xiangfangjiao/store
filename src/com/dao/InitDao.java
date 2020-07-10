package com.dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.pojo.Level;
import com.pojo.User;

public class InitDao {
	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {e.printStackTrace();}
	}
	private String URL = null;
	private String USER = null;
	private String PASSWORD = null;
	public InitDao() {
		try {
			InputStream in = InitDao.class.getClassLoader()
					.getResourceAsStream("database.properties");
			 Properties prop = new Properties();   
			 prop.load(in);
			 URL = prop.getProperty("url");
			 USER = prop.getProperty("user");
			 PASSWORD = prop.getProperty("password");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/**
	 * 根据 levelMessage 查找对应用户列表
	 * @param levelMessage
	 * @return 用户列表
	 */
	public List<User> findUsersByLevelMessage(String levelMessage){
		List<User> users = new ArrayList<>();
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection(URL,USER,PASSWORD);
			String sql = "select * from free_user left join free_level "
					+ "on free_user.userLevel=free_level.level_Id "
					+ "where levelMessage=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1,levelMessage);
			rs = ps.executeQuery();
			while(rs.next()) {
				users.add(new User());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return users;
	}
	/**
	 * 根据 levelMessage 查找对应 Level
	 * @param levelMessage
	 * @return
	 */
	public Level findLevelByLevelMessage(String levelMessage) {
		Level level = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			conn = DriverManager.getConnection(URL,USER,PASSWORD);
			String sql = "select * from free_level where levelMessage=?";
			ps = conn.prepareStatement(sql);
			ps.setString(1,levelMessage);
			rs = ps.executeQuery();
			if(rs.next()) {
				level = new Level();
				level.setLevel_Id(rs.getInt("level_Id"));
				level.setLevelMessage(rs.getString("levelMessage"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				ps.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return level;
	}
	/**
	 * 添加用户到数据库
	 * @param user
	 * @return
	 */
	public int addNewUser(User user) {
		Connection conn = null;
		PreparedStatement ps = null;
		try {
			conn = DriverManager.getConnection(URL,USER,PASSWORD);
			String sql 
				= "insert into free_user(userId,userName,userPsw,userPhone,userLevel,userAlice)" 
						+" values(?,?,?,?,?,?)";
			ps = conn.prepareStatement(sql);
			ps.setString(1,user.getUserName());
			ps.setString(2,user.getUserPsw());
			ps.setString(3,user.getUserPhone());
			ps.setInt(4,user.getUserLevel().getLevel_Id());
			ps.setObject(5,user.getUserCreateDate());
			ps.setString(6,user.getUserAlice());
			return ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				ps.close();
				conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return 0;
	}
}

















