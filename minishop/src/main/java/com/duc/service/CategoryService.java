package com.duc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duc.dao.CategoryDAO;
import com.duc.daoimp.CategoryImp;
import com.duc.entity.Category;

@Service
public class CategoryService implements CategoryImp{

	@Autowired
	CategoryDAO categoryDAO;
	
	public List<Category> GetCategory() {
		return categoryDAO.GetCategory();
	}

}
