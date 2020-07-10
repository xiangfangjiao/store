package com.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pojo.Level;
import com.pojo.User;
import com.service.ClientService;
import com.service.UserService;

@Controller
public class UserController {
	@Resource
	private UserService userService;
	@Resource
	private ClientService clientService;
	// 跳转到 logins 页面
			@RequestMapping(value="/logins",method=RequestMethod.GET)
			public String login(@ModelAttribute User user) {
				return "logins";
			}
			// 登录校验
				@RequestMapping(value="/logins",method=RequestMethod.POST)
				public String login(@Valid User user,BindingResult bindingResult,HttpSession session,Model model) {
					model.addAttribute("user",user);
					// 判断是否有校验错误
					if(bindingResult.hasErrors())
						return "logins";
					// 根据账户密码查找账户
					User result = userService.findUserByNameAndPsw(user.getUserName(),user.getUserPsw());
					// 没有找到
					if(result == null ) {
						model.addAttribute("error","账户或密码错误");
						return "logins";
					}
					// 把账户放入 session
					session.setAttribute("loginer",result);
					// 判断其权限
					if(result.getUserLevel().getLevelMessage().equals("系统管理员")) 
						return "manage";
					return "redirect:/index";
				}
		//访问manage
		@RequestMapping(value="/manage",method=RequestMethod.GET)
		public String manage1(Model model) {
			List<User> user = userService.findAllUser();
			model.addAttribute("user", user);
			return "manage";
		}
	
	
	
	
	// 实现登出功能
		@RequestMapping("/loginout")
		public String loginout(HttpSession session) {
			session.removeAttribute("loginer");
			return "index";
		}
	
	
	// 跳转到  regist 页面
		@RequestMapping(value="/regist",method=RequestMethod.GET)
		public String clientRegist(@ModelAttribute User user) {
			user.setUserSex("保密");
			return "regist";
		}
	
	// 实现注册功能
		@RequestMapping(value="/regist",method=RequestMethod.POST)
		public String clientRegist(@Valid User user,BindingResult bindingResult,
				String reUserPsw,Model model) {
			if(bindingResult.hasErrors()) {
				return "regist";
			}
			// 校验密码和确认密码是否相同
			if(!user.getUserPsw().equals(reUserPsw)) {
				model.addAttribute("error","输入相同的密码");
				return "regist";
			}
			// 判断账户是否已经存在
			User result = clientService.findUserByName(user.getUserName());
			if(result != null) {
				model.addAttribute("error","账户已经存在");
				return "regist";
			}
			// 添加账户信息然后跳转到登录页面
			user.setUserCreateDate(new Date());
			Level level = clientService.findLevelByMessage("普通会员");
			user.setUserLevel(level);
			clientService.addNewUser(user);
			return "redirect:/logins";
		}
	
	
	
	
	
	
	
}
