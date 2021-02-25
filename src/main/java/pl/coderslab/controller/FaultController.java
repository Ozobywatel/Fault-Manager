package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import pl.coderslab.model.Document;
import pl.coderslab.model.Fault;
import pl.coderslab.service.*;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/app/faults")
public class FaultController {

    private final FaultService faultService;
    private final SubcontractorService subcontractorService;
    private final DocumentService documentService;

    public FaultController(FaultService faultService, SubcontractorService subcontractorService, DocumentService documentService) {
        this.faultService = faultService;
        this.subcontractorService = subcontractorService;
        this.documentService = documentService;
    }

    @GetMapping("/all")
    public String showFaults(Model model) {
        List<Fault> faults = faultService.getFaults();
       model.addAttribute("faults", faults);
        return "faults/all-all";
    }

    @RequestMapping(value = "/documents/{id}/add", method = RequestMethod.GET)
    public String showAddFaultForm(@PathVariable long id,Model model) {
        List<Fault> faults = faultService.getAllByDocumentId(id);
        model.addAttribute("document", documentService.get(id));
        model.addAttribute("faults", faults);
        model.addAttribute("fault", new Fault());
        model.addAttribute("subcontractors", subcontractorService.getSubcontractors());
        return "faults/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveFault(@Valid Fault fault, BindingResult result) {

        if (result.hasErrors()) {
            return "faults/add";
        }
        faultService.add(fault);
        return "redirect:/app/documents/all";
    }
//
//    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
//    public String showEditForm(@PathVariable long id, Model model) {
//        model.addAttribute("document", documentService.get(id));
//        model.addAttribute("buildings", buildingService.getBuildings());
//        model.addAttribute("users", userService.getUsers());
//        return "documents/edit";
//    }
//
//    @RequestMapping(value = "/edit", method = RequestMethod.POST)
//    public String editDocument(@Valid Document document, BindingResult result) {
//        if (result.hasErrors()) {
//            return "documents/edit";
//        }
//        documentService.add(document);
//        return "redirect:/app/documents/all";
//    }
//
//
//    @GetMapping("/delete/{id}")
//    public String deleteDocument(Model model, @PathVariable long id) {
//        documentService.delete(id);
//        return "redirect:/app/documents/all";
//    }
//
//    @GetMapping("/details/{id}")
//    public String showDocument(Model model, @PathVariable long id) {
//        model.addAttribute("document", documentService.get(id).orElseThrow(EntityNotFoundException::new));
//        return "documents/details";
//    }
}
