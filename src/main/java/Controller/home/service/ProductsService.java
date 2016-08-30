package Controller.home.service;

import com.journaldev.hibernate.model.Categories;
import com.journaldev.hibernate.model.Products;
import com.journaldev.hibernate.model.Subcategories;
import com.journaldev.hibernate.util.HibernateUtil;
import org.hibernate.*;
import org.springframework.stereotype.Service;

import java.util.*;

/**
 * Created by dev- on 8/9/16.
 */
@Service
public class ProductsService {

    public Map<Integer, Products> getProduct(int id){
        System.out.println("id is sssssss: " + id);
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
                data.put(0,  products);
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
                System.out.println(products.getName());
                data.put(products.getId(),  products);
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
