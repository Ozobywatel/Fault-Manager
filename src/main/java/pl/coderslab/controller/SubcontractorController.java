package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.model.Subcontractor;
import pl.coderslab.service.SubcontractorService;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/admin/subcontractors")
public class SubcontractorController {

    private final SubcontractorService subcontractorService;

    public SubcontractorController(SubcontractorService subcontractorService) {
        this.subcontractorService = subcontractorService;
    }

    @GetMapping("/all")
    public String showSubcontractors(Model model) {
        List<Subcontractor> subcontractors = subcontractorService.getSubcontractors();
       model.addAttribute("subcontractor", subcontractors);
        return "subcontractors/all";
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String showAddSubcontractorForm(Model model) {
        model.addAttribute("subcontractor", new Subcontractor());
        return "subcontractors/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveSubcontractor(@Valid Subcontractor subcontractor, BindingResult result) {

        if (result.hasErrors()) {
            return "subcontractors/add";
        }
        subcontractorService.add(subcontractor);
        return "redirect:/admin/subcontractors/all";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String showEditForm(@PathVariable long id, Model model) {
        model.addAttribute("subcontractor", subcontractorService.get(id));
        return "subcontractors/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editBook(@Valid Subcontractor subcontractor, BindingResult result) {
        if (result.hasErrors()) {
            return "subcontractors/edit";
        }
        subcontractorService.add(subcontractor);
        return "redirect:/admin/subcontractors/all";
    }


    @GetMapping("/delete/{id}")
    public String deleteSubcontractor(Model model, @PathVariable long id) {
        subcontractorService.delete(id);
        return "redirect:/admin/subcontractors/all";
    }

    @GetMapping("/details/{id}")
    public String showSubcontractor(Model model, @PathVariable long id) {
        model.addAttribute("subcontractor", subcontractorService.get(id).orElseThrow(EntityNotFoundException::new));
        return "subcontractors/details";
    }
}
