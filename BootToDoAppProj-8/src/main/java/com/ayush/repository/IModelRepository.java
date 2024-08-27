package com.ayush.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ayush.bean.Model;

public interface IModelRepository extends JpaRepository<Model, Long>{

}
