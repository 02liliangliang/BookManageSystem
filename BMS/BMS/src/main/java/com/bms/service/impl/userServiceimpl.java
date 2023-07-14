package com.bms.service.impl;
import com.bms.entity.User;
import com.bms.mapper.userMapper;
import com.bms.service.userService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;
@Service
public class userServiceimpl implements userService {
    @Autowired
    private userMapper userMapper;
    @Override
    public User getUser(String userName) {
        return userMapper.getUserByuserName(userName);
    }
    @Override
    public List<User> getUsers() {
        return userMapper.findAll();
    }
    @Override
    public void addUser(String userName, String userPassword) {
        userMapper.addUser(userName, userPassword);
    }
    @Override
    public void deleteUser(Integer userId) {userMapper.deleteUser(userId);}
}
