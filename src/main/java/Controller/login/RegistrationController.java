package Controller.login;


import com.journaldev.hibernate.model.Users;

import com.journaldev.hibernate.util.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class RegistrationController {

    Session hibSession = null;

    @Autowired
    private Users user;

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
//    @ResponseBody

    public ModelAndView showRegistrationPage(HttpSession session) {
        Object v = session.getAttribute("auth");
        if (v != null ){
            return new ModelAndView("redirect:" + "/home");

        }
        System.out.println( "afterseesion");
        ModelAndView view  = new ModelAndView("registration");
        return view;
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public ModelAndView handleUserLogin(ModelAndView model, @RequestParam String firstName,
                                  @RequestParam String lastName,
                                  @RequestParam String email,
                                  @RequestParam String password) {

        try {

            hibSession = HibernateUtil.getSessionFactory().openSession();

            hibSession.beginTransaction();
            List<Users> emails =   hibSession.createCriteria(Users.class).list();
//            emails.get()
            for (Users item : emails    ) {
                if(item.getEmail().equals(email)){

                    model = new ModelAndView("registration");
                                model.addObject("errorMessage", "Please change your email, that email already has bean taken");

//                    session.close();

                    return model;
                }


            }

            user.setEmail(email);
            user.setPassword(password);
            hibSession.save(user);
            hibSession.getTransaction().commit();


        }catch (HibernateException e) {
            e.printStackTrace();
        }
        finally {
            hibSession.close();
        }


  

        model = new ModelAndView("restaurant");
        return model;
    }





}
