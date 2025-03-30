package com.example.studentcrud.controller;

import com.example.studentcrud.model.Student;
import com.example.studentcrud.service.StudentService;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
public class StudentController {

    @Autowired
    private StudentService studentService;

    @GetMapping("/")
    public String viewHomePage(Model model) {
        model.addAttribute("listStudents", studentService.getAllStudents());
        return "index"; // will resolve to /WEB-INF/views/index.jsp
    }

    @GetMapping("/showNewStudentForm")
    public String showNewStudentForm(Model model) {
        model.addAttribute("student", new Student());
        return "form"; // will resolve to /WEB-INF/views/form.jsp
    }

    @PostMapping("/saveStudent")
    public String saveStudent(@Valid @ModelAttribute("student") Student student,
                              BindingResult result,
                              Model model) {
        if (result.hasErrors()) {
            return "form";
        }
        studentService.saveStudent(student);
        return "redirect:/";
    }

    @GetMapping("/showFormForUpdate/{id}")
    public String showFormForUpdate(@PathVariable(value = "id") Long id, Model model) {
        Student student = studentService.getStudentById(id);
        model.addAttribute("student", student);
        return "form";
    }

    @GetMapping("/deleteStudent/{id}")
    public String deleteStudent(@PathVariable(value = "id") Long id) {
        studentService.deleteStudent(id);
        return "redirect:/";
    }
}
