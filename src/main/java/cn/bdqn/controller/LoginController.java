package cn.bdqn.controller;

import cn.bdqn.pojo.User;
import cn.bdqn.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class LoginController {
   @Resource(name = "userService")
    private UserService userService;
   @RequestMapping("/logindo")
   public String logindo(){

       return "index";
   }
    @RequestMapping("/login")
    public String login(User user, HttpSession session){
        System.out.print( user.getName()+" "+user.getPassword());
        User u=userService.login(user.getName(),user.getPassword());
        if(u!=null){
            session.setAttribute("user",u);
            return "redirect:/getAll";

        }else{
            return "redirect:/logindo";
        }

    }

}
