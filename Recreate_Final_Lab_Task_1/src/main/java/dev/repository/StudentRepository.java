package dev.repository;

import dev.domain.Student;

import java.util.List;

public interface StudentRepository {
    List<Student> getAllStudents();
    Student getStudentById(int id);
    void updateStudent(Student student);
    void deleteStudent(int id);

    // Add the following method for saving a new student
    void save(Student student);
}
