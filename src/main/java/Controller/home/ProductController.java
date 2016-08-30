package Controller.home;

import Controller.home.service.ProductsService;
import com.journaldev.hibernate.model.Products;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by dev- on 8/14/16.
 */
@Controller
public class ProductController {

    @Autowired
    private ProductsService productService;

    @RequestMapping(value = "/product//{someID}", method = RequestMethod.GET)
//	@ResponseBody

    public ModelAndView showLoginPage(@PathVariable(value="someID") int id, HttpSession session ) {
        System.out.println("id is a: " +  id);

        ModelAndView model = new ModelAndView("product");
//        Map<Integer, Products> product  = productService.getProduct(id);
        Map <Integer , Products > product   =  productService.getProduct(id);
        System.out.println(product + " ----------------");

        model.addObject("product", product);

        return  model;


    }
}
