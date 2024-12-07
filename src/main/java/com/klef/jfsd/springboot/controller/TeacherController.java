package com.klef.jfsd.springboot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import com.klef.jfsd.springboot.model.Teacher;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.TeacherService;
import jakarta.servlet.http.HttpServletRequest;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TeacherController {

  @Autowired
  private TeacherService teacherService;

  @GetMapping("teacherhome")
  public ModelAndView teacherHome() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("teacherhome");
    long count = teacherService.studentCount();
    mv.addObject("count", count);
    return mv;
  }

  @GetMapping("viewallstudents")
  public ModelAndView viewAllStudents() {
    ModelAndView mv = new ModelAndView();
    List<Student> studentList = teacherService.viewAllStudents();
    mv.addObject("studentList", studentList);
    mv.setViewName("viewallstudents");
    return mv;
  }
  

  @PostMapping("checkteacherlogin")
  public ModelAndView checkTeacherLogin(HttpServletRequest request) {
    ModelAndView mv = new ModelAndView();
    String username = request.getParameter("auname");
    String password = request.getParameter("apwd");
    Teacher teacher = teacherService.checkTeacherLogin(username, password);

    if (teacher != null) {
      mv.setViewName("teacherhome");
      long count = teacherService.studentCount();
      mv.addObject("count", count);
    } else {
      mv.setViewName("teacherloginfail");
      mv.addObject("message", "Login Failed");
    }
    return mv;
  }

  @GetMapping("deletestudent")
  public ModelAndView deleteStudent() {
    ModelAndView mv = new ModelAndView();
    List<Student> studentList = teacherService.viewAllStudents();
    mv.setViewName("deletestudent");
    mv.addObject("studentList", studentList);
    
    return mv;
  }

  @GetMapping("delete")
  public String delete(@RequestParam("id") int studentId) {
    teacherService.deleteStudent(studentId);
    return "redirect:/deletestudent";
  }
  

  @GetMapping("teacherlogout")
  public ModelAndView teacherLogout() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("teacherlogin");
    return mv;
  }
}
