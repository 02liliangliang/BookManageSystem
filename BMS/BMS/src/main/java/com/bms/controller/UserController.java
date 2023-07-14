package com.bms.controller;
import com.bms.entity.User;
import com.bms.service.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
@Controller
@RequestMapping("/users")
public class UserController {
    @Autowired
    userService userService;
@RequestMapping("/deleteuser")
    public String deleteuder(HttpServletRequest request,Integer userId){
    HttpSession session=request.getSession();
    System.out.println(userId);
    userService.deleteUser(userId);
    List<User> user =userService.getUsers();
    session.setAttribute("user",user);
    return "admin";
}

}
