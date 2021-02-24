package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.coderslab.model.Project;
import pl.coderslab.service.ProjectService;

import java.util.List;

@Controller
@RequestMapping("/app/")
public class AppDashController {

    private final ProjectService projectService;

    public AppDashController(ProjectService projectService) {
        this.projectService = projectService;
    }

    @GetMapping("/dash")
    public String showProjects(Model model) {
        List<Project> projects = projectService.getProjects();
       model.addAttribute("projects", projects);
        return "dash";
    }

}
