package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.model.User;
import pl.coderslab.service.UserService;

import java.util.List;

@Controller
@RequestMapping("/admin/users")
public class UserController {

    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @GetMapping("/all")
    public String showUsers(Model model) {
        List<User> users = userService.getUsers();
       model.addAttribute("users", users);
        return "users/all";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String showAddUserForm(Model model) {
        model.addAttribute("user", new User());
        return "users/add";
    }
}
