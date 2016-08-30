package com.journaldev.hibernate.main;

import com.journaldev.hibernate.model.Categories;
import com.journaldev.hibernate.model.Subcategories;
import com.journaldev.hibernate.util.HibernateUtil;
import org.hibernate.*;

import java.util.*;

//import com.journaldev.hibernate.util.HibernateAnnotationUtil;


public class ReturnmapcatMain {
    //	private static SessionFactory sessionFactory;
    public static void main(String[] args) {
//        Map data<ArrayList<String>, ArrayList <String> >=null;
        Map <ArrayList<String> , ArrayList<String> > data  =  ReturnmapcatMain.getData();
        List  catlist = new ArrayList<>();
        // Get an iterator

        for ( ArrayList key : data.keySet() ) {
            System.out.println( key.get(0) + " key get0");
            System.out.println( key.get(1)  + "key get 1");
            System.out.println(key);
            for (String key2 : data.get(key)){
                System.out.println(key2);
                return;
            }
//            System.out.println( key.get(2) );
        }
//        Set set = data.entrySet();
//
//        Iterator i = set.iterator();
//        catlist = (ArrayList<String>)data.get("categories1");
//        System.out.println(catlist.get(0));
//
//        Iterator iterator2;
//
//        for (iterator2 = catlist.iterator(); iterator2.hasNext(); ){
//
//            System.out.println(iterator2.next());
//        }






    }

    public static Map<ArrayList<String>, ArrayList<String>> getData(){
        SessionFactory sessionFactory = null;
        Session session = null;
        Transaction tx = null;
        Map <ArrayList<String> , ArrayList<String> > data = new HashMap();

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

                Set rolesSet = categories.getSubcategories();
                List <String> subCat = new ArrayList<String>();
                data.put(  (ArrayList<String>) cat, (ArrayList<String>) subCat );

                for (Iterator iterator2 = rolesSet.iterator(); iterator2.hasNext();){
                    Subcategories subcategories = (Subcategories) iterator2.next();
                    subCat.add(subcategories.getName());
//                    data.put("subcategories" + j , (ArrayList<String>) subCat);

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