package com.chris.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.chris.model.Employee;
import com.chris.repo.EmpRepository;

@Controller
public class EmpController {
	
	@Autowired
	private EmpRepository repo;
	
	@PostMapping("/addNewEmp")
	public String newEmp (Employee emp) {
		repo.save(emp);
		return("redirect:/list");
	}
	
	@GetMapping("/addNewEmp")
	public  ModelAndView addnewEmp() {
		Employee e1 = new Employee();
		return new ModelAndView("newEmp", "form", e1);
	}
	
	@GetMapping("/list")
	public ModelAndView listAllEmps() {
		List<Employee> e1 = repo.findAll();
		// parameters (the file to go to, the name to use in that file, the thing that will map to the last parameter) 
		return new ModelAndView("allEmps", "emp", e1);
	}
}
