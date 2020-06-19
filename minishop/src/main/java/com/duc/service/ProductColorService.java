package com.duc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duc.dao.ColorProductDAO;
import com.duc.daoimp.ColorProductImp;
import com.duc.entity.ProductColor;

@Service
public class ProductColorService implements ColorProductImp{

	
	@Autowired
	ColorProductDAO colorProductDAO;
	
	public List<ProductColor> GetListProductColor() {
		
		return colorProductDAO.GetListProductColor();
	}
	
}
