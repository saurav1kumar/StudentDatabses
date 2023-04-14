package com.example.demo;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class StudentController {
	@Autowired
	Studentrepo repo;

	@RequestMapping("/addStudent")
	String disp() {
		return "form.jsp";
	}

	@RequestMapping("/saveStudent")
	String saveStudent(Student s) {
		repo.save(s);
		return "form.jsp";
	}

	@RequestMapping("/deleteById")
	String deleteById(HttpSession h2, Integer sid) {
		Student s = repo.findById(sid).orElse(null);
		if (s != null) {
			h2.setAttribute("message", sid);
			repo.deleteById(sid);

		} else {
			h2.setAttribute("message", "Invalid id");
		}
		return "view.jsp";

	}

	@RequestMapping("/detailsById")
	String detailsById(HttpSession h1, Integer sid) {
		Student s = repo.findById(sid).orElse(null);
		h1.setAttribute("name", s.getName());
		h1.setAttribute("sid", s.getSid());
		h1.setAttribute("email", s.getEmail());
		h1.setAttribute("phno", s.getPhno());
		return "view.jsp";
	}
}
