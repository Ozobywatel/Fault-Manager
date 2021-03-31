package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import pl.coderslab.model.User;
import pl.coderslab.service.UserService;

@Controller
public class NewAdminController {

    private final UserService userService;

    public NewAdminController(UserService userService) {
        this.userService = userService;
    }
    @GetMapping("/create-user")
    @ResponseBody
    public String createUser() {
        User user = new User();
        user.setUsername("admin");
        user.setPassword("admin");
        userService.add(user);
        return "admin";
    }
}
