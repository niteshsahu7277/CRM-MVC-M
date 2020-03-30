package com.niit.techno.crm.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.techno.crm.dao.EliteDAO;
import com.niit.techno.crm.model.Address;
import com.niit.techno.crm.model.EliteUser;

@Service
public class EliteServiceImpl implements EliteService {
	@Autowired
	private EliteDAO eliteDAO;
	
	@Transactional
	@Override
	public void saveECustomer(Address add) {
		eliteDAO.saveECustomer(add);

	}
	@Override
	@Transactional
	public EliteUser checkUser(EliteUser theEUser) {
		return eliteDAO.checkUser(theEUser);
	}

}
