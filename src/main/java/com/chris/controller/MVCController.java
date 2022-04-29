package com.chris.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MVCController {
	@GetMapping("/mvc")
	public String mvc(Model model) {
		model.addAttribute("title", "Welcome Students");
		model.addAttribute("msg", "Welcome to springboot");
		return "welcome";
	}
}
