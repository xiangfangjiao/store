package com.listener;

import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.commons.codec.digest.DigestUtils;

import com.mysql.jdbc.AbandonedConnectionCleanupThread;
import com.pojo.Level;
import com.pojo.User;
import com.service.InitService;
import java.util.Enumeration;

// 监听器
public class InitListener implements ServletContextListener {
	private InitService initService = new InitService();
	// 在系统启动的时候执行
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		// 调用服务
		List<User> users = initService.findUsersByLevelMessage("系统管理员");
		if(users.size()==0) {// 没有系统管理员
			// 查找对应 levelMessage 的 Level 对象
			Level level = initService.findLevelByLevelMessage("系统管理员");
			// 创建 User 对象
			User user = new User();
			user.setUserName("admin");
			user.setUserPsw(DigestUtils.md5Hex("123456"));
			user.setUserAlice("系统管理员");
			user.setUserLevel(level);
			user.setUserCreateDate(new Date());
			// 添加用户
			initService.addNewUser(user);
		}
	}
	@Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
    //这里如果Web应用拥有多个数据库的连接，可以一并关闭
        Enumeration<Driver> drivers = DriverManager.getDrivers();
        Driver driver = null;
        while (drivers.hasMoreElements()) {
            try {
                driver = drivers.nextElement();
                DriverManager.deregisterDriver(driver);
            } catch (SQLException ex) {
            }
        }
        try {
			AbandonedConnectionCleanupThread.shutdown();
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}



