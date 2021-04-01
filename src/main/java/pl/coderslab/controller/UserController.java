package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.model.User;
import pl.coderslab.service.UserService;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.awt.print.Book;
import java.time.LocalDate;
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

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveUser(@Valid User user, BindingResult result) {

        if (result.hasErrors()) {
            return "users/add";
        }
        userService.add(user);
        return "redirect:/admin/users/all";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String showEditForm(@PathVariable long id, Model model) {
        model.addAttribute("user", userService.get(id));
        return "users/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editUser(@Valid User user, BindingResult result) {
        if (result.hasErrors()) {
            return "users/edit";
        }
        userService.add(user);
        return "redirect:/admin/users/all";
    }

    @GetMapping("/delete/{username}")
    public String deleteUser(Model model, @PathVariable String username) {
        userService.delete(username);
        return "redirect:/admin/users/all";
    }

    @GetMapping("/enable/{username}")
    public String enableUser(Model model, @PathVariable String username) {
        userService.enable(username);
        return "redirect:/admin/users/all";
    }
}
