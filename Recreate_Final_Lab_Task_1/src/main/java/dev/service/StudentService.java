package dev.service;

import dev.domain.Student;

import java.util.List;

public interface StudentService {
    List<Student> getAllStudents();
    Student getStudentById(int id);
    void updateStudent(Student student);
    void deleteStudent(int id);

    // Add the following method for creating a new student
    void createStudent(Student student);
}
