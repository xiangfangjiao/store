package com.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class FileController {
	// 单个文件上传
	@RequestMapping(value="/upload",method=RequestMethod.POST)
	public String upload(
			HttpServletRequest request,
			String description,
			MultipartFile file) throws Exception{
		
		System.out.println("description："+description);
		// 如果文件不为空，写入文件路径
		if(!file.isEmpty()) {
			String path = request.getServletContext().getRealPath("/statics/image/");
			//上传文件名
			String filename = file.getOriginalFilename();
			//将上传文件保存到一个目标文件当中
			file.transferTo(new File(path+File.separator+filename));
			return "success";
		}
		else {
			return "error";
		}
	}
	// 多个文件上传
	@RequestMapping("/upload2")
	public String upload2(HttpServletRequest request,
			String description,
			MultipartFile[] up) throws Exception{
		
		System.out.println("description："+description);
		int count = 0;// 统计上传文件数量
		// 使用循环遍历数组，其中每个元素值就是一个文件封装的 MultipartFile 对象
		for(MultipartFile file : up) {
			// 如果文件不为空，写入文件路径
			if(!file.isEmpty()) {
				String path = request.getServletContext().getRealPath("/statics/image/");
				//上传文件名
				String filename = file.getOriginalFilename();
				//将上传文件保存到一个目标文件当中
				file.transferTo(new File(path+File.separator+filename));
				count++;
			}
			else {
				// ..
			}
		}
		System.out.println("成功上传"+count+"个文件");
		return "success";
	}
	// 多文件上传2
	@RequestMapping("/upload3")
	public String upload3(HttpServletRequest request,
			String description,
			MultipartFile file1,
			MultipartFile file2) throws Exception{
		System.out.println("description："+description);
		int count = 0;
		// 如果文件不为空，写入文件路径
		if(!file1.isEmpty()) {
			String path = request.getServletContext().getRealPath("/statics/image/");
			//上传文件名
			String filename = file1.getOriginalFilename();
			//将上传文件保存到一个目标文件当中
			file1.transferTo(new File(path+File.separator+filename));
			count++;
		}
		else {
			// ...
		}
		// 如果文件不为空，写入文件路径
		if(!file2.isEmpty()) {
			String path = request.getServletContext().getRealPath("/statics/image/");
			//上传文件名
			String filename = file2.getOriginalFilename();
			//将上传文件保存到一个目标文件当中
			file2.transferTo(new File(path+File.separator+filename));
			count++;
		}
		else {
			// ...
		}
		System.out.println("成功上传"+count+"个文件");
		return "success";
	}
}




