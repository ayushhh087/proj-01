package com.ayush.service;

import java.util.List;

import com.ayush.bean.Model;

public interface IModelService {
	void addUser(Model user);
	
	void deleteUser(Long id);
	
	List<Model> getAllTodos();


}
