package com.initializer;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRegistration;

import org.springframework.web.WebApplicationInitializer;

import com.controller.FileUploadController;
// 因为在Servlet3.0环境中，容器会在类路径中查找实现
// javax.servlet.ServletContainerInitializer接口的类，并用它来配置Servlet容器
public class MyInitializer implements WebApplicationInitializer {
	@Override
	public void onStartup(ServletContext servletContext) throws ServletException {
		// 自定义Servlet
        ServletRegistration.Dynamic myServlet 
        	= servletContext.addServlet("upload",FileUploadController.class);
        myServlet.addMapping("/upload");
	}
}
