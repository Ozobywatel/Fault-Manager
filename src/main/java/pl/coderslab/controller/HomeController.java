package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.Project;
import pl.coderslab.service.ProjectService;

import java.util.List;

@Controller
public class HomeController {

    @GetMapping("/")
    public String homePage() {

        return "home";
    }

}
