package com.klef.jfsd.springboot.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import jakarta.transaction.Transactional;

import com.klef.jfsd.springboot.model.Teacher;

@Repository
public interface TeacherRepository extends JpaRepository<Teacher, String> {
  
  @Query("select t from Teacher t where t.username=?1 and t.password=?2")
  public Teacher checkTeacherLogin(String uname, String pwd);

  @Query("update Student s set s.status = ?1 where s.id = ?2")
  @Modifying
  @Transactional
  public int updateStudentStatus(String status, int sid);

  @Query("delete from Student s where s.id = ?1")
  @Modifying
  @Transactional
  public int deleteStudentById(int sid);
}
