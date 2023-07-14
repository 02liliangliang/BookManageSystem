package com.bms.mapper;
import com.bms.entity.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;
@Mapper
public interface userMapper {
     User getUserByuserName(String userName);
     List<User> findAll();
     void addUser(@Param("userName") String userName,@Param("userPassword") String userPassword);
     void deleteUser(Integer userId);
}

