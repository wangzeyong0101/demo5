package cn.bdqn.dao;

import cn.bdqn.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {
    User login(@Param("name") String name, @Param("pwd") String pwd);
}
