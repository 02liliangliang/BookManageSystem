package com.bms.controller;
import com.bms.entity.Book;
import com.bms.entity.User;
import com.bms.service.bookService;
import com.bms.service.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;
@Controller
public class LoginController {
    @Autowired
    private userService userService;
    @Autowired
    private bookService bookService;
    @RequestMapping("/index")
    public String skip(){
        return "login";
    }
    @RequestMapping("/login")
    public String dologin( String userName,String userPassword, HttpServletRequest request){
        HttpSession session= request.getSession();
        User u=userService.getUser(userName);
        //        拿到所有用户信息
        List<User> user =userService.getUsers();
        System.out.println(user);
        session.setAttribute("user",user);
//        拿到所有书籍
        List<Book> book = bookService.getBooks();
        session.setAttribute("books",book);
        try{
            if (userName.equals(u.getUserName())){
                if (userPassword.equals(u.getUserPassword())){
                    if (request.getParameter("radio1").equals("0")){
                        session.setAttribute("username",userName);
                        return "users";
                    }
                    else{
                        session.setAttribute("username",userName);
                        return "admin";
                    }
                }
                else{
                    System.out.println("密码输入错误");
                    session.setAttribute("error","密码输入错误");
                    return "redirect:/index.jsp";
                }
            }
            else{
                System.out.println("用户名输入错误");
                session.setAttribute("error","用户名输入错误");
                return "redirect:/index.jsp";
            }
            }catch (Exception e){
                System.out.println("请注册");
                session.setAttribute("error","请注册");
                return "redirect:/index.jsp";
            }
    }

    @RequestMapping("/Signin")
    public String Signin(String userName,String userPassword, HttpServletRequest request){
        HttpSession session= request.getSession();
            User u=userService.getUser(userName);
            if (u ==null){
                if (request.getParameter("radio1").equals("0")){
                    userService.addUser(userName,userPassword);
                    session.setAttribute("error2", "注册成功，请返回登录");
                }
                else{
                    userService.addUser(userName,userPassword);
                    session.setAttribute("error", "注册成功，请返回登录");
                }
            }
            else {
                System.out.println("用户名已存在，请重新输入");
                session.setAttribute("error1", "用户名已存在，请重新输入");
            }
        return "redirect:/index.jsp";
    }
    @RequestMapping("/sign")
    public String sign(){
        return "Signin";
    }
    @RequestMapping("/sign-login")
    public String signlogin(){
        return "login";
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:/index.jsp";
    }
}
