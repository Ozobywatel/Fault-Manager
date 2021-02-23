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
@RequestMapping("/admin/projects")
public class ProjectController {

    private final ProjectService projectService;

    public ProjectController(ProjectService projectService) {
        this.projectService = projectService;
    }

    @GetMapping("/all")
    public String showProjects(Model model) {
        List<Project> projects = projectService.getProjects();
       model.addAttribute("projects", projects);
        return "projects/all";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String showAddProjectForm(Model model) {
        model.addAttribute("project", new Project());
        return "projects/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveProject(@Valid Project project, BindingResult result) {

        if (result.hasErrors()) {
            return "projects/add";
        }
        projectService.add(project);
        return "redirect:/admin/projects/all";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String showEditForm(@PathVariable long id, Model model) {
        model.addAttribute("project", projectService.get(id));
        return "projects/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editProject(@Valid Project project, BindingResult result) {
        if (result.hasErrors()) {
            return "projects/edit";
        }
        projectService.add(project);
        return "redirect:/admin/projects/all";
    }


    @GetMapping("/delete/{id}")
    public String deleteProject(Model model, @PathVariable long id) {
        projectService.delete(id);
        return "redirect:/admin/projects/all";
    }

    @GetMapping("/details/{id}")
    public String showProject(Model model, @PathVariable long id) {
        model.addAttribute("project", projectService.get(id).orElseThrow(EntityNotFoundException::new));
        return "projects/details";
    }
}
