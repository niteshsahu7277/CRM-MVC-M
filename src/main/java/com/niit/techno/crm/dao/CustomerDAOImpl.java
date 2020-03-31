package com.niit.techno.crm.dao;
import com.niit.techno.crm.model.Customer;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CustomerDAOImpl implements CustomerDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	
	
	public List<Customer> getCustomers()
	{
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cd=session.getCriteriaBuilder();
		CriteriaQuery<Customer> cq=cd.createQuery(Customer.class);
		Root<Customer> root=cq.from(Customer.class);
		cq.select(root);
		Query query=session.createQuery(cq);
		return query.getResultList();
	}
	
	
	public void saveCustomer(Customer theCustomer)
	{
		Session currentSession=sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theCustomer);
	}
	
	@Override
	public Customer getCustomer(int theId) {
		Session currentSession=sessionFactory.getCurrentSession();
		Customer theCustomer=currentSession.get(Customer.class,theId);
		return theCustomer;
	}
	
	@Override
	public void deleteCustomer(int theId){
		Session currentSession=sessionFactory.getCurrentSession();
		Customer theCustomer=currentSession.byId(Customer.class).load(theId);
		currentSession.delete(theCustomer);	
	}

}
