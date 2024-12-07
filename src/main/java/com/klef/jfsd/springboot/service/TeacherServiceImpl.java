package com.klef.jfsd.springboot.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.model.Teacher;
import com.klef.jfsd.springboot.repository.StudentRepository;
import com.klef.jfsd.springboot.repository.TeacherRepository;

@Service
public class TeacherServiceImpl implements TeacherService{

	@Autowired
	private StudentRepository studentRepository;
	
	@Autowired
	private TeacherRepository teacherRepository;

	@Override
	public List<Student> viewAllStudents() 
	{
		
		return studentRepository.findAll();
	}

	@Override
	public Teacher checkTeacherLogin(String uname, String pwd)
	{
		// TODO Auto-generated method stub
		return teacherRepository.checkTeacherLogin(uname, pwd);
	}

	@Override
	public String deleteStudent(int sid) 
	{
		// TODO Auto-generated method stub
		studentRepository.deleteById(sid);
		return "deleted";
	}

	@Override
	public long studentCount() 
	{
		// TODO Auto-generated method stub
		return studentRepository.count();
	}

}
