package com.controller;

import java.util.Locale;

import javax.servlet.http.HttpServletRequest;

import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

@Controller
public class IndexController {
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/login")
	public String login(String request_locale,HttpServletRequest request) {
		if(request_locale != null) {
			// 设置中文环境
			if(request_locale.equals("zh_CN")) {
				Locale locale = new Locale("zh","CN");
				request.getSession().setAttribute(
					SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME,locale);
			}
			// 设置英文环境
			else if(request_locale.equals("en_US")){
				Locale locale = new Locale("en","US");
				request.getSession().setAttribute(
					SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME,locale);
			}
			// 使用当前的语言环境
			else {
				request.getSession().setAttribute(
					SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME,
					LocaleContextHolder.getLocale());
			}
		}
		
		return "login";	
	}
	
}
