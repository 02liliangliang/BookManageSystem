package com.bms.service;
import com.bms.entity.User;
import java.util.List;
public interface userService {
    User getUser(String userName);
     List<User> getUsers();
     void addUser(String userName,String userPassword);
    void deleteUser(Integer userId);
}
