package cn.bdqn.service;

import cn.bdqn.pojo.Student;

import java.util.List;


public interface StudentService {
    List<Student> getList();
    int  delId(int id);
    int addStu(Student student);
    int updStu(Student student, int id);
    Student getOne(int id);
}
