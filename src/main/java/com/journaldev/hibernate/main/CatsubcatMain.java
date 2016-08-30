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
import org.hibernate.mapping.Array;

import javax.xml.crypto.Data;

public class CatsubcatMain {
    //	private static SessionFactory sessionFactory;
    public static void main(String[] args) {
        Map data=null;
        data =  CatsubcatMain.getData();
        List  catlist = new ArrayList<>();
        // Get an iterator
        Set set = data.entrySet();

        Iterator i = set.iterator();
        catlist = (ArrayList<String>)data.get("categories1");
        System.out.println(catlist.get(0));

        Iterator iterator2;

        for (iterator2 = catlist.iterator(); iterator2.hasNext(); ){

            System.out.println(iterator2.next());
        }


    }

    public static Map<String, ArrayList<String>> getData(){
        SessionFactory sessionFactory = null;
        Session session = null;
        Transaction tx = null;
        Map <String, ArrayList<String> > data = new HashMap();

        try{
            sessionFactory = HibernateUtil.getSessionFactory();
		    session = sessionFactory.openSession();
            System.out.println("Session created");
            tx = session.beginTransaction();
            String sql = "SELECT * FROM `categories` INNER JOIN subcategories ON subcategories.category_id= categories.id ";
            SQLQuery query = session.createSQLQuery(sql);
            query.addEntity(Categories.class);
            List resultList = query.list();
            int j = 0;
            for (Iterator iterator1 = resultList.iterator(); iterator1.hasNext();){
                Categories categories = (Categories) iterator1.next();
                List<String> cat = new ArrayList<String>();

                if(categories.getId()==j){
                    continue;
                }
                System.out.println("get categories: " + categories.getName());
                cat.add(String.valueOf(categories.getId()));
                cat.add(categories.getName());
                j=(int) categories.getId();
                data.put("categories" + j , (ArrayList<String>) cat);

                Set rolesSet = categories.getSubcategories();
                List <String> subCat = new ArrayList<String>();

                for (Iterator iterator2 = rolesSet.iterator(); iterator2.hasNext();){
                    Subcategories subcategories = (Subcategories) iterator2.next();
                    subCat.add(subcategories.getName());
                    System.out.println("asdsdasdasdasdasdasdsa" + j);
                    data.put("subcategories" + j , (ArrayList<String>) subCat);

                }
            }
            tx.commit();
        }catch (HibernateException e) {
            if (tx!=null) tx.rollback();
            e.printStackTrace();
        }finally {
            session.close();
		sessionFactory.close();
        }
        return data;
    }

}