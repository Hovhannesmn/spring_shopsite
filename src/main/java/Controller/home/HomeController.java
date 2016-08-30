package Controller.home;


import Controller.home.service.CategoriesService;
import Controller.home.service.ProductsService;
import Controller.login.LoginService;
import com.journaldev.hibernate.main.CatsubcatMain;
import com.journaldev.hibernate.main.ReturnmapcatMain;
import com.journaldev.hibernate.model.Categories;
import com.journaldev.hibernate.model.Products;
import com.journaldev.hibernate.model.Users;
import com.journaldev.hibernate.util.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
public class HomeController {

    Session hibSession = null;

    @Autowired
    private Users user;


    @Autowired
    private CategoriesService categoriesService;
    @Autowired
    private ProductsService productsService;

    @RequestMapping(value = "/home", method = RequestMethod.GET)
//	@ResponseBody

    public ModelAndView showLoginPage(HttpSession session) {

//        Map data=null;
//        data = categoriesService.getCategories();
////         CatsubcatMain.getData();
//        List  categorylist = new ArrayList<>();
//        // Get an iterator
//        Set set = data.entrySet();
//
//        Iterator i = set.iterator();
//        categorylist = (ArrayList<String>)data.get("subcategories1");
//        System.out.println(categorylist.get(0));
//
//        Iterator iterator2;
//
//        for (iterator2 = categorylist.iterator(); iterator2.hasNext(); ){
//
//            System.out.println(iterator2.next());
//        }

        ModelAndView model = new ModelAndView("restaurant");
        Map <ArrayList<String> , ArrayList<String> > catsub   =  categoriesService.getCategories();
        Map <Integer , Products > products   =  productsService.getProducts();
        System.out.println("---------------------");
        System.out.println(products.get("hakob"));
//        for (Products pro : products.keySet()){
//            System.out.println("final");
//        }
        model.addObject("catsub", catsub);
        model.addObject("products", products);
        Object v = session.getAttribute ("auth");

        if (v != null ){
//        if (Integer.valueOf (1).equals (session.getAttribute ("auth"))) {

            return model;



        }else{
            return new ModelAndView("redirect:" + "/registration");

        }


    }


}
