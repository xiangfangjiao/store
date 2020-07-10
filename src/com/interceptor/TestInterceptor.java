package com.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

// 自定义拦截器
public class TestInterceptor implements HandlerInterceptor {
	// 在DispatcherServlet渲染了对应的视图之后执行，这个方法主要作用是资源清理
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, 
			Object handler, Exception ex) throws Exception {
		System.out.println("...afterCompletion...");
	}
	// 在DispatcherServlet进行视图返回渲染之前被调用。可在此方法中对Controller处理之后的ModelAndView进行操作
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, 
			Object handler,ModelAndView modelAndView) throws Exception {
		System.out.println("...postHandle...");
	}
	// 该方法在请求处理之前被调用。返回false表示请求结束，返回true继续往下执行
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, 
			Object handler) throws Exception {
		System.out.println("...preHandle...");
		return true;
	}

}
