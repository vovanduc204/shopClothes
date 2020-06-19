package com.duc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duc.dao.SizeProductDAO;
import com.duc.daoimp.SizeProductImp;
import com.duc.entity.ProductSize;

@Service
public class ProductSizeService implements SizeProductImp{
	@Autowired
	SizeProductDAO sizeproductdAO;

	public List<ProductSize> GetListSizeProduct() {
		
		return sizeproductdAO.GetListSizeProduct();
	}
}
