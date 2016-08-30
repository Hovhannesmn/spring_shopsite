package Controller.login;


import com.journaldev.hibernate.model.Roles;
import com.journaldev.hibernate.model.Users;
import com.journaldev.hibernate.util.HibernateUtil;
import org.hibernate.HibernateException;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@Service
public class LoginService {

    Session session = null;
    public List<String> validateUser(String emails, String passwords) {
        List data  = new ArrayList<String>();

        try {

            session = HibernateUtil.getSessionFactory().openSession();

            session.beginTransaction();
//            tx = session.beginTransaction();
            String sql = String.format("FROM Users where email='%s' AND password='%s'", emails, passwords );
            List employees = session.createQuery(sql).list();
//            List<Users> emails =   session.createCriteria(Users.class).list();
//            emails.get()

//            String sql =String.format(
//                    "SELECT * FROM `users` INNER JOIN roles ON users.id= roles.user_id WHERE users.email='%s' AND password='%s' ", emails, passwords);

            System.out.println(sql);
//            SQLQuery query = session.createSQLQuery(sql);
//			query.addEntity(Users.class);
//			List employees = query.list();
            for (Iterator iterator1 = employees.iterator(); iterator1.hasNext();){
                Users users = (Users) iterator1.next();
                System.out.println("get email: " + users.getEmail());
                data.add(users.getId());
                data.add(users.getEmail());
                data.add(users.getPassword());
                System.out.println("  get password: " + users.getPassword());
                System.out.println("get total object roles: " + users.getRoles());
                Set rolesSet = users.getRoles();
                for (Iterator iterator2 = rolesSet.iterator(); iterator2.hasNext();){
                    Roles roles = (Roles) iterator2.next();
                    System.out.println("get nameof role: " + roles.getName());
                    data.add(roles.getName());
//					System.out.println("getitemid: " + items1.getItemId());
                }
                return data;
            }
//            for (Users item : emails    ) {
////                if(item.getEmail().equals(email) && item.getPassword().equals(password) ){
//                    data.add(item.getId());
////                    data.add(item.getFirstName());
////                    data.add(item.getLastName());
//                    data.add(item.getEmail());
//                    System.out.println(item.getEmail() + ":  " + item.getPassword() + "success");
//                    data.add(item.getPassword());
//                    return data;
//                }





    }catch (HibernateException e) {
        e.printStackTrace();
        }finally {
            session.close();
    }
        data.add(null);
        return data ;
    }

}