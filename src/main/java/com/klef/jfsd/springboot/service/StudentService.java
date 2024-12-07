package com.klef.jfsd.springboot.service;

import com.klef.jfsd.springboot.model.Student;

public interface StudentService {
public String StudentRegistration(Student s);
public Student checkstudentlogin(String email, String pwd);
public String updatestd(Student s);



}