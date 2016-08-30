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
public class LoginController {

    Session hibSession = null;

    @Autowired
    private Users users;

    @Autowired
    private LoginService loginService;



    @RequestMapping(value = "/", method = RequestMethod.POST)
    public ModelAndView handleUserLogin(ModelAndView model, @RequestParam String email,
                                        @RequestParam String password, HttpSession sesssion  ) {

        System.out.println("post request");
        List data =  loginService.validateUser(email, password);
        if(data.get(0)==null){
            model = new ModelAndView("login");
            System.out.println("redirect back");
            model.addObject("errorMessage", "asdsdsadasfsa");
        return model;
        }

        sesssion.setAttribute("auth", data );

        model = new ModelAndView("login");
        model.addObject("data", data);

        System.out.println("mast be redirect /home page");

        return new ModelAndView("redirect:" + "/home");
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
//	@ResponseBody

    public ModelAndView showLoginPage(HttpSession session) {
        System.out.println("Maven + Hibernate + MySQL");
        Object v = session.getAttribute("auth");
        if (v != null ){
            System.out.println("mast be redirect /home page");
            return new ModelAndView("redirect:" + "/home");

        }

        try {
            hibSession = HibernateUtil.getSessionFactory().openSession();

            hibSession.beginTransaction();
////        User user = new User();
//            User user=
//                    (User)session.get(User.class, 4);
//            user.setFirstName( "Smbat");
//            session.update(user);

        }catch (HibernateException e) {
//            if (session!=null)
            e.printStackTrace();
//        }finally {
//            session.close();
        }

//        User user = new User();
//        User user=
//                (User)session.get(User.class, 4);
//        System.out.println(user);
//        user.setFirstName( "Smbat");
//        session.update(user);

        System.out.println("first step");
        //return back to index.jsp
        ModelAndView model = new ModelAndView("login");
        List<Users> list =   hibSession.createCriteria(Users.class).list();
        System.out.println("second step");

        return model;

    }


}
