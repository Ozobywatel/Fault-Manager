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
        List<Fault> faults = faultService.findAllByDeletedFalse();
       model.addAttribute("faults", faults);
        return "faults/all-all";
    }

    @RequestMapping(value = "/documents/{id}/add", method = RequestMethod.GET)
    public String showAddFaultForm(Model model, @PathVariable long id) {
        model.addAttribute("faults", faultService.findAllByDocumentIdAndDeleted(id, false));
        model.addAttribute("newFault", new Fault());
        model.addAttribute("subcontractors", subcontractorService.getSubcontractors());
        return "faults/add";
    }

    @RequestMapping(value = "/documents/{fault.document.id}/add", method = RequestMethod.POST)
    public String saveFault(@Valid Fault newFault, BindingResult result) {

        if (result.hasErrors()) {
            return "faults/add";
        }
        newFault.setDeleted(false);
        faultService.add(newFault);
        return "redirect:/app/documents/all";
    }

    @GetMapping("/delete/{id}")
    public String deleteFault(Model model, @PathVariable long id) {
        faultService.delete(id);
        return "redirect:/app/faults/all";
    }
}
