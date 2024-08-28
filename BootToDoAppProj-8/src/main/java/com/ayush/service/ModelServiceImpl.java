package com.ayush.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ayush.bean.Model;
import com.ayush.repository.IModelRepository;

@Service
public class ModelServiceImpl implements IModelService{

	@Autowired
	IModelRepository modelRepo;
	
	@Override
	public void addUser(Model user) {
		// TODO Auto-mm method stub
		modelRepo.save(user);
		System.out.println("Added");
	}

	@Override
	public void deleteUser(Long id) {
		// TODO Auto-generated method stub
		modelRepo.deleteById(id);
		
	}

	@Override
	public List<Model> getAllTodos() {
		return modelRepo.findAll();
	}

}
