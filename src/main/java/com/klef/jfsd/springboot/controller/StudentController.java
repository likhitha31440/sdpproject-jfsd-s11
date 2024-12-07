package com.klef.jfsd.springboot.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import com.klef.jfsd.springboot.model.Student;
import com.klef.jfsd.springboot.service.StudentService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {

  @Autowired
  private StudentService service;

  @GetMapping("/")
  public ModelAndView home() {
    ModelAndView mv = new ModelAndView("home");
    return mv;
  }

  @GetMapping("studentreg")
  public ModelAndView studentReg() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("studentreg");
    return mv;
  }

  @PostMapping("insertstudent")
  public ModelAndView insertStudent(HttpServletRequest request) {
    String name = request.getParameter("ename");
    String gender = request.getParameter("gender");
    String dob = request.getParameter("edob");
    String dept = request.getParameter("edept");
    double gpa = Double.parseDouble(request.getParameter("egpa"));
    String location = request.getParameter("elocation");
    String email = request.getParameter("eemail");
    String password = request.getParameter("epwd");
    String contact = request.getParameter("econtact");
    String status = "Registered";

    Student student = new Student();
    student.setName(name);
    student.setGender(gender);
    student.setDepartment(dept);
    student.setDateofbirth(dob);
    student.setId((int) gpa);
    student.setLocation(location);
    student.setEmail(email);
    student.setPassword(password);
    student.setContact(contact);
    student.setStatus(status);

    String msg = service.StudentRegistration(student);
    ModelAndView mv = new ModelAndView("regsuccess");
    mv.addObject("message", msg);
    return mv;
  }
  
 
      
       
   

  @GetMapping("teacherlogin")
  public ModelAndView teacherLogin() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("teacherlogin");
    return mv;
  }

  @GetMapping("studentlogin")
  public ModelAndView studentLogin() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("studentlogin");
    return mv;
  }

  @GetMapping("studenthome")
  public ModelAndView studentHome() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("studenthome");
    return mv;
  }

  @GetMapping("studentlogout")
  public ModelAndView studentLogout(HttpServletRequest request) {
    HttpSession session = request.getSession();
    session.removeAttribute("student");
    ModelAndView mv = new ModelAndView();
    mv.setViewName("studentlogin");
    return mv;
  }

  @PostMapping("checkstudentlogin")
  public ModelAndView checkStudentLogin(HttpServletRequest request) {
    ModelAndView mv = new ModelAndView();
    String email = request.getParameter("auname");
    String password = request.getParameter("apwd");
    Student student = service.checkstudentlogin(email, password);

    if (student != null) {
      HttpSession session = request.getSession();
      session.setAttribute("student", student);
      session.setMaxInactiveInterval(5);
      mv.setViewName("studenthome");
    } else {
      mv.setViewName("studentlogin");
      mv.addObject("message", "Login Failed");
    }
    return mv;
  }

  @GetMapping("studentsessionfail")
  public ModelAndView studentSessionFail() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("studentsessionfail");
    return mv;
  }

  @GetMapping("studentprofile")
  public ModelAndView studentProfile() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("studentprofile");
    return mv;
  }

  @GetMapping("updatestudent")
  public ModelAndView updateStudent() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("updatestudent");
    return mv;
  }
  @PostMapping("updatestudent")
  public ModelAndView update(HttpServletRequest request)
  {
     int id =Integer.parseInt(request.getParameter("eid"));
     String name = request.getParameter("ename");
   String gender = request.getParameter("egender");
   String dob = request.getParameter("edob");
   String dept = request.getParameter("edept");
   double gpa = Double.parseDouble(request.getParameter("egpa"));
   String location = request.getParameter("elocation");
   String password = request.getParameter("epwd");
   String contact = request.getParameter("econtact");


     Student emp = new Student();
     emp.setId(id);
     emp.setName(name);
     emp.setGender(gender);
     emp.setDepartment(dept);
     emp.setDateofbirth(dob);
     emp.setGpa(gpa);
     emp.setLocation(location);
     emp.setPassword(password);
     emp.setContact(contact);
     
     String msg = service.updatestd(emp);
     
     ModelAndView mv = new ModelAndView("updatesuccess");
     mv.addObject("message", msg);
   
     return mv;

  }
  @GetMapping("uploadproject")
  public ModelAndView uploadproject() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("uploadproject");
    return mv;
  }
  @GetMapping("portfoliostatus")
  public ModelAndView portfoliostatus() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("portfoliostatus");
    return mv;
  }
  @GetMapping("projectdetails")
  public ModelAndView projectdetails() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("projectdetails");
    return mv;
  }
  @GetMapping("uploadsuccess")
  public ModelAndView uploadsuccess() {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("uploadsuccess");
    return mv;
  }
  @GetMapping("studentsessionexp")
  public ModelAndView studentsessionexp()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("studentsessionexpired");
    return mv;
  }
 
}
