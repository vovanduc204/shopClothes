package com.duc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duc.dao.PermissionDAO;
import com.duc.daoimp.PermissionImp;
import com.duc.entity.Permissions;

@Service
public class PermissionService implements PermissionImp{
	@Autowired
	PermissionDAO permissiondao;

	public List<Permissions> listPermissions() {
		
		return permissiondao.listPermissions();
	}

}
