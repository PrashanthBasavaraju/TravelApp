package coms.TravelApp.controllers;

import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

	@GetMapping("/home")
	public String home() {
		return "Welcome";
	}

	@GetMapping("/login")
	public String showLoginForm() {
		System.out.println("Login Page");
		return "login";
	}

	@PostMapping("/login")
	public String login(@RequestParam String username, @RequestParam String password, Map<String, Object> model) {
		if ("admin".equals(username) && "admin@1234".equals(password)) {
			System.out.println("Admin");
			return "redirect:/admin";
		} else if ("user".equals(username) && "user1234".equals(password)) {
			System.out.println("User");
			return "redirect:/user";
		} else {
			model.put("error", "Invalid username or password");
			return "login";
		}
	}

	@GetMapping("/admin")
	public String adminPage() {
		return "admin";
	}

	@GetMapping("/user")
	public String userPage() {
		return "user";
	}

}
