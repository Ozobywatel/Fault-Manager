package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.model.Project;
import pl.coderslab.service.ProjectService;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin/")
public class AdminPanelController {

    private final ProjectService projectService;

    public AdminPanelController(ProjectService projectService) {
        this.projectService = projectService;
    }

    @GetMapping("/panel")
    public String showProjects(Model model) {
        List<Project> projects = projectService.getProjects();
       model.addAttribute("projects", projects);
        return "panel";
    }

}
