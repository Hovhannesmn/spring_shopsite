package com.journaldev.hibernate.main;

import java.security.cert.Certificate;
import java.util.*;

import com.journaldev.hibernate.model.Categories;
import com.journaldev.hibernate.model.Subcategories;
import com.journaldev.hibernate.model.Users;
import com.journaldev.hibernate.model.Roles;
import org.hibernate.*;


import com.journaldev.hibernate.util.HibernateUtil;
//import com.journaldev.hibernate.util.HibernateAnnotationUtil;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.Restrictions;

import javax.xml.crypto.Data;

public class HibernateOneToManyAnnotationMain {
//	private static SessionFactory sessionFactory;
	public static void main(String[] args) {

		// Create a hash map
		HashMap hm = new HashMap();
		// Put elements to the map
		hm.put("Zara", new Double(3434.34));
		hm.put("Mahnaz", new Integer(123));
		hm.put("Ayan", new Double(1378.00));
		hm.put("Daisy", new Double(99.22));
		hm.put("Qadir", new Double(-19.08));
		System.out.println((Double) hm.get("Zara"));
		System.out.println((Integer) hm.get("Mahnaz"));
		// Get a set of the entries
		Set set = hm.entrySet();
		// Get an iterator
		Iterator i = set.iterator();
		// Display elements
		while(i.hasNext()) {
			Map.Entry me = (Map.Entry)i.next();
			System.out.print(me.getKey() + ": ");
			System.out.println(me.getValue());
		}
		System.out.println();
		// Deposit 1000 into Zara's account
		double balance = ((Double)hm.get("Zara")).doubleValue();
		hm.put("Zara", new Double(balance + 1000));
		System.out.println("Zara's new balance: " +
				hm.get("Zara"));

//	Users users = new Users();
////
//		users.setEmail("emai@gmail.com");
//		users.setPassword("123456");
//		Roles roles = new Roles("admin" , users);
//		Set<Roles> rolesSet = new HashSet<Roles>();
//		rolesSet.add(roles);
//		users.setRoles(rolesSet);
//		System.out.println(rolesSet);
//		System.out.println(rolesSet.size());
//		SessionFactory sessionFactory = null;
//		Session session = null;
//		Transaction tx = null;
//		try{
//			sessionFactory = HibernateAnnotationUtil.getSessionFactory();
//			session = sessionFactory.openSession();
//
//		System.out.println("Session created");
//		//start transaction
//		tx = session.beginTransaction();
//		//Save the Model object
//		session.save(users);
//			session.save(roles);
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

		HibernateOneToManyAnnotationMain hib = new HibernateOneToManyAnnotationMain();
		hib.listEmployees();
//		System.out.println("end of file");
//		session.close();
//		sessionFactory.close();
		return;

	}

	
	/* Method to list all the employees detail */
	public void listEmployees(){
		SessionFactory sessionFactory = null;
		Session session = null;
		Transaction tx = null;

		try{
//					sessionFactory = HibernateAnnotationUtil.getSessionFactory();
			session = HibernateUtil.getSessionFactory().openSession();
//		session = sessionFactory.openSession();
		System.out.println("Session created");
			tx = session.beginTransaction();
//			List employees = session.createQuery("FROM Users where email='emai@gmail.com' and password='123456' ").list();
String a = "email@gmail.com";
			String  first = "first";
			String   last = "last";
			String value = String.format("%s %s", first, last);
			System.out.println(value);
//				String sql =String.format(
//					"SELECT * FROM `users` INNER JOIN roles ON users.id= roles.user_id WHERE email='%s'", a);
			String sql = "SELECT * FROM `categories` INNER JOIN subcategories ON subcategories.category_id= categories.id";
			System.out.println(sql);
			SQLQuery query = session.createSQLQuery(sql);
			query.addEntity(Categories.class);
			List employees = query.list();
			List cat = new ArrayList<String>();
			List subCat = new ArrayList<String>();
			HashMap data = new HashMap();
//			Criteria cr = session.createCriteria(Cart1.class);
//			cr.add(Restrictions.eq("name",  "salary"));
//			List employees= cr.list();
			for (Iterator iterator1 = employees.iterator(); iterator1.hasNext();){
				Categories categories = (Categories) iterator1.next();
				System.out.println("get email: " + categories.getName());
				cat.add(categories.getName());

				System.out.println(55);
//				System.out.println("  get password: " + users.getPassword());
//				System.out.println("get total object roles: " + users.getRoles());
				Set rolesSet = categories.getSubcategories();

				for (Iterator iterator2 = rolesSet.iterator(); iterator2.hasNext();){
					Subcategories roles = (Subcategories) iterator2.next();
					System.out.println("get nameof role: " + roles.getName());
//					System.out.println("getitemid: " + items1.getItemId());
					subCat.add(roles.getName());


				}
				data.put("categories", cat);
				data.put("subcategories", subCat);

				System.out.println(data.get("categories"));
				System.out.println(data.get("subcategories"));

			}
			tx.commit();
		}catch (HibernateException e) {
			if (tx!=null) tx.rollback();
			e.printStackTrace();
		}finally {
//			session.close();
			session.close();
//		sessionFactory.close();

		}
		return;
	}

}
