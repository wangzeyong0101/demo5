package cn.bdqn.dao;

import cn.bdqn.pojo.Student;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentMapper {
    List<Student> getList();
    int  delId(@Param("id") int id);
    int addStu(@Param("stu") Student student);
    int updStu(@Param("stu") Student student, @Param("id") int id);
    Student getOne(@Param("id") int id);
}
