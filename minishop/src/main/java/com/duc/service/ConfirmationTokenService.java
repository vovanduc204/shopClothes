package com.duc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.duc.dao.ConfirmationTokenDAO;
import com.duc.daoimp.ConfirmationTokenImp;
import com.duc.entity.ConfirmationToken;

@Service
public class ConfirmationTokenService implements ConfirmationTokenImp{

	@Autowired
	ConfirmationTokenDAO confirmationtokendao;
	
	public boolean AddConfirmationToken(ConfirmationToken confirmationtoken) {
		return confirmationtokendao.AddConfirmationToken(confirmationtoken);
	}

	public ConfirmationToken FindByConfirmationToken(String confirmationtoken) {
		return confirmationtokendao.FindByConfirmationToken(confirmationtoken);
	}

}
