package com.ayush.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    public String viewTodoPage(@ModelAttribute Model user, Map<String, Object> map) {
        service.addUser(user);
        map.put("user", user);
        List<Model> todo = service.getAllTodos();
        map.put("todoList", todo);
        return "index";
    }

    @GetMapping("/showtodo")
    public String viewRecentToDo(Map<String, Object> map) {
        List<Model> todo = service.getAllTodos();
        map.put("user", todo);
        return "show-todo";
    }

    @PostMapping("/deleteTodos")
    public String deleteSelectedTodos(@RequestParam("todoIds") List<Long> todoIds, Map<String, Object> map) {
        for (Long id : todoIds) {
            service.deleteUser(id);
        }
        List<Model> todo = service.getAllTodos();
        map.put("user", todo);
        return "show-todo";
    }

    @GetMapping("/showindex")
    public String backHome() {
        return "index";
    }
}
