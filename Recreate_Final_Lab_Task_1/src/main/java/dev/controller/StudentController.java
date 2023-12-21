package dev.controller;

import dev.domain.Student;
import dev.service.StudentService;
import dev.service.StudentServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.annotation.WebServlet;
import javax.validation.Valid;
import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping("/students")
public class StudentController {
    @Autowired
    private StudentService studentService;

    @GetMapping
    public String getAllStudents(Model model) {
        List<Student> students = studentService.getAllStudents();
        model.addAttribute("students", students);
        return "studentList";
    }

    @GetMapping("/{id}")
    public String getStudentById(@PathVariable int id, Model model) {
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        return "studentDetails";
    }

    @GetMapping("/{id}/edit")
    public String editStudentForm(@PathVariable int id, Model model) {
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        return "studentForm";
    }

    @PostMapping("/{id}/edit")
    public String updateStudent(@ModelAttribute Student student) {
        studentService.updateStudent(student);
        return "redirect:/students";
    }

    @GetMapping("/{id}/delete")
    public String deleteStudent(@PathVariable int id) {
        studentService.deleteStudent(id);
        return "redirect:/students";
    }

    // Add a new method to handle the request for adding a new student

    @GetMapping("/new")
    public String createStudentForm(Model model) {
        model.addAttribute("student", new Student());
        return "register";
    }
/*
    // Add a new method to handle the submission of the form for adding a new student
    @PostMapping("/register")
    public String createStudent(@ModelAttribute Student student) {
        studentService.createStudent(student);
        return "redirect:/students";
    }*/
    @RequestMapping("/Store")
    public String fifth(@Valid @ModelAttribute("student") Student student, BindingResult bindingResult) throws SQLException {
        if (bindingResult.hasErrors()) {
            return "confirm";
        }
        else {
            studentService.createStudent(student);
            return "confirm";
        }
    }

}
