package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
	@RequestMapping("/func1")
	public String func1() {
		return "error";
	}
	@RequestMapping("/func2")
	public String func2() {
		return "error";
	}
}
