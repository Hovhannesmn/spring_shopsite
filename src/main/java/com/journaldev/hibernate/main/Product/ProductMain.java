package com.journaldev.hibernate.main.Product;

import com.journaldev.hibernate.model.Products;
import com.journaldev.hibernate.util.HibernateUtil;
import org.hibernate.*;

import java.util.*;

//import com.journaldev.hibernate.util.HibernateAnnotationUtil;


public class ProductMain {
//	private static SessionFactory sessionFactory;
	public static void main(String[] args) {


	Products products = new Products();
//
		products.setImage("123456");
		products.setName("chsahsh");
		products.setPrice(1234);
//		products.setSubcat_id(1);
//		Roles roles = new Roles("admin" , users);
//		Set<Roles> rolesSet = new HashSet<Roles>();
//		rolesSet.add(roles);
//		users.setRoles(rolesSet);
//		System.out.println(rolesSet);
//		System.out.println(rolesSet.size());
//		System.out.println(products.getName() + " products name");
//		SessionFactory sessionFactory = null;
//		Session session = null;
//		Transaction tx = null;
//		try{
//			sessionFactory = HibernateUtil.getSessionFactory();
//			session = sessionFactory.openSession();
//			System.out.println("Session created");
//			tx = session.beginTransaction();
//
////
//		//Save the Model object
//		session.save(products);
////			session.save(roles);
////		//Commit transaction
//		tx.commit();
////		System.out.println("Cart1 ID="+users.getId());
////
////
//		}catch (Throwable ex) {
//			System.out.println("efhdsahfasbdkbas");
//			System.err.println("Failed to create sessionFactory object." + ex);
//			throw new ExceptionInInitializerError(ex);
//		}
//
////		HibernateOneToManyAnnotationMain hib = new HibernateOneToManyAnnotationMain();
////		hib.listEmployees();
//		System.out.println("end of file");
//		session.close();
//		sessionFactory.close();
//		System.out.println(ProductMain.getProducts());
		ProductMain.getProduct(2);
		return;

	}

	public static Map<Integer, Products> getProduct(int id){

		SessionFactory sessionFactory = null;
		Session session = null;
		Transaction tx = null;
		Map<Integer, Products> data = new HashMap();

		try{
			sessionFactory = HibernateUtil.getSessionFactory();
			session = sessionFactory.openSession();
			System.out.println("Session created");
			tx = session.beginTransaction();
			String sql = String.format("SELECT * FROM `products` WHERE id=%s", id);
			SQLQuery query = session.createSQLQuery(sql);
			query.addEntity(Products.class);
			List resultList = query.list();
			int j = 0;
			for (Iterator iterator1 = resultList.iterator(); iterator1.hasNext();){
				List strData = new ArrayList<>();
				Products products = (Products) iterator1.next();
				System.out.println(products.getName());
				System.out.println(products.getImage());
				System.out.println(products.getId());
				data.put(0,  products);
			}
            System.out.println(data.get(0).getName());
            tx.commit();
		}catch (HibernateException e) {
			if (tx!=null) tx.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}



		return data;

	}


	public static Map<Integer, Products> getProducts(){
		SessionFactory sessionFactory = null;
		Session session = null;
		Transaction tx = null;
		Map<Integer, Products> data = new HashMap();

		try{
			sessionFactory = HibernateUtil.getSessionFactory();
			session = sessionFactory.openSession();
			System.out.println("Session created");
			tx = session.beginTransaction();
			String sql = "SELECT * FROM `products`";
			SQLQuery query = session.createSQLQuery(sql);
			query.addEntity(Products.class);
			List resultList = query.list();
			int j = 0;
			for (Iterator iterator1 = resultList.iterator(); iterator1.hasNext();){
				List strData = new ArrayList<>();
				Products products = (Products) iterator1.next();
				System.out.println(products.getId());
				data.put(products.getId(),  products);

			}
			System.out.println(data.keySet());
			for (Integer str: data.keySet()) {
				data.get(str).getName();
			}
			tx.commit();
		}catch (HibernateException e) {
			if (tx!=null) tx.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}



		return data;
	}
	


}
