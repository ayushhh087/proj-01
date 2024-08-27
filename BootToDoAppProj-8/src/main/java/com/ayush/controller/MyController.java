package com.ayush.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.ayush.bean.Model;
import com.ayush.service.IModelService;

@Controller
public class MyController {
	
	@Autowired
	IModelService service;
	
    @GetMapping("/")
    public String viewPage() {
        return "index";
    }

    @PostMapping("/idxpage")
    public String viewTodoPage(@ModelAttribute Model user,Map<String,Object>map) {
        map.put("user",user);
        List<Model> todo = service.getAllTodos();
        
        service.addUser(user);
        return "show-todo";
    }
    
    @GetMapping("/showtodo")
    public String viewRecentToDo(@ModelAttribute Model u, Map<String,Object>map) {
    	List<Model> todo = service.getAllTodos();

    	System.out.println(todo);
		map.put("user", todo);
		System.out.println(todo.get(0));
//		service.addUser(u);
        return "show-todo";
    }

    @GetMapping("/showindex")
    public String backHome() {
        return "index";
    }
}
