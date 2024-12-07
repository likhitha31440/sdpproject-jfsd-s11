package com.klef.jfsd.springboot.service;

import java.util.List;
import com.klef.jfsd.springboot.model.Teacher;
import com.klef.jfsd.springboot.model.Student;

public interface TeacherService   
{
    public List<Student> viewAllStudents();
    public Teacher checkTeacherLogin(String uname, String pwd);
    public String deleteStudent(int sid);
    public long studentCount();
}

