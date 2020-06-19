package com.duc.daoimp;

import com.duc.entity.ConfirmationToken;

public interface ConfirmationTokenImp {
	boolean AddConfirmationToken(ConfirmationToken confirmationtoken);
	ConfirmationToken FindByConfirmationToken(String confirmationtoken);
}
