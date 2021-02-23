package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.model.Building;
import pl.coderslab.service.BuildingService;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin/buildings")
public class BuildingController {

    private final BuildingService buildingService;

    public BuildingController(BuildingService buildingService) {
        this.buildingService = buildingService;
    }

    @GetMapping("/all")
    public String showBuildings(Model model) {
        List<Building> buildings = buildingService.getBuildings();
       model.addAttribute("buildings", buildings);
        return "buildings/all";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String showAddUserForm(Model model) {
        model.addAttribute("building", new Building());
        return "buildings/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveUser(@Valid Building user, BindingResult result) {

        if (result.hasErrors()) {
            return "buildings/add";
        }
        buildingService.add(user);
        return "redirect:/admin/buildings/all";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String showEditForm(@PathVariable long id, Model model) {
        model.addAttribute("building", buildingService.get(id));
        return "buildings/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editBuilding(@Valid Building building, BindingResult result) {
        if (result.hasErrors()) {
            return "buildings/edit";
        }
        buildingService.add(building);
        return "redirect:/admin/buildings/all";
    }


    @GetMapping("/delete/{id}")
    public String deleteUser(Model model, @PathVariable long id) {
        buildingService.delete(id);
        return "redirect:/admin/buildings/all";
    }

    @GetMapping("/details/{id}")
    public String showUser(Model model, @PathVariable long id) {
        model.addAttribute("building", buildingService.get(id).orElseThrow(EntityNotFoundException::new));
        return "buildings/details";
    }
}
