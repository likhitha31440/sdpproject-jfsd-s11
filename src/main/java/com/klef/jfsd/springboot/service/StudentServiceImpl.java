package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.repository.StudentRepository;

@Service
public  class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentRepository studentRepository;

    @Override
    public String StudentRegistration(Student student) {
        studentRepository.save(student);
        return "Student Registered Successfully";
    }

    @Override
    public Student checkstudentlogin(String email, String pwd) {
        return studentRepository.checkStudentLogin(email, pwd);
    }

    @Override
    public String updatestd(Student s) {
        Student student = studentRepository.findById(s.getId()).orElse(null);
        
        if (student != null) {
            student.setContact(s.getContact());
            student.setDateofbirth(s.getDateofbirth());
            student.setDepartment(s.getDepartment());
            student.setGender(s.getGender());
            student.setLocation(s.getLocation());
            student.setName(s.getName());
            student.setPassword(s.getPassword());
            student.setGpa(s.getGpa());

            studentRepository.save(student);
            return "Student Updated Successfully";
        }

        return "Student Not Found";
    }
}
