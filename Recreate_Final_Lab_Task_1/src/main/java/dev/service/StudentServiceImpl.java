package dev.service;

import dev.domain.Student;
import dev.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {


    private final StudentRepository studentRepository;

    public StudentServiceImpl(StudentRepository studentRepository) {
        this.studentRepository = studentRepository;
    }


    @Override

    public List<Student> getAllStudents() {
        return studentRepository.getAllStudents();
    }

    @Override
    @Transactional
    public Student getStudentById(int id) {
        return studentRepository.getStudentById(id);
    }

    @Override
    @Transactional
    public void updateStudent(Student student) {
        studentRepository.updateStudent(student);
    }

    @Override
    @Transactional
    public void deleteStudent(int id) {
        studentRepository.deleteStudent(id);
    }

    @Override
    @Transactional
    public void createStudent(Student student) {
        studentRepository.save(student);
    }
}
