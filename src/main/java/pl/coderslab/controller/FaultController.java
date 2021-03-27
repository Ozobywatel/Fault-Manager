package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Document;
import pl.coderslab.model.Fault;
import pl.coderslab.model.Project;
import pl.coderslab.model.Subcontractor;
import pl.coderslab.service.*;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.time.Duration;
import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

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

    @RequestMapping(value = "/documents/{docId}/add", method = RequestMethod.GET)
    public String showAddFaultForm(Model model, @PathVariable long docId) {
        model.addAttribute("faults", faultService.findAllByDocumentIdAndDeleted(docId, false));

        Fault fault = new Fault();

        fault.setDeleted(false);
        fault.setDocument(documentService.get(docId).orElseThrow(EntityNotFoundException::new));
        model.addAttribute("newFault", fault);
        model.addAttribute("subcontractors", subcontractorService.getSubcontractors());
        return "faults/add";
    }

    @RequestMapping(value = "/documents/{docId}/add", method = RequestMethod.POST)
    public String saveFault(@Valid Fault newFault, BindingResult result) {

        if (result.hasErrors()) {
            return "faults/add";
        }

        faultService.add(newFault);
        return "redirect:/app/faults/documents/" + newFault.getDocument().getId() + "/add";
    }

    //DELETING FAULT FROM FAULT LIST
    @RequestMapping(value = "/deleteFromList/{id}", method = RequestMethod.GET)
    public String deleteFaultFromList(@PathVariable long id) {

        Fault fault = faultService.getById(id);
        fault.setDeleted(true);
        faultService.add(fault);

        return "redirect:/app/faults/all";
    }

    //DELETING FAULT FROM DOCUMENT LIST
    @RequestMapping(value = "/deleteFromDocument/{id}", method = RequestMethod.GET)
    public String deleteFaultFromDocumentForm(@PathVariable long id) {

        Fault fault = faultService.getById(id);
        fault.setDeleted(true);
        Long idDoc = fault.getDocument().getId();
        faultService.add(fault);

        return "redirect:/app/faults/documents/" + idDoc + "/add";
    }

    //DETAILS FROM FAULT LIST
    @GetMapping("/details/{id}")
    public String showFault(Model model, @PathVariable long id) {
        model.addAttribute("fault", faultService.get(id).orElseThrow(EntityNotFoundException::new));
        return "faults/details";
    }

    @ModelAttribute("subcontractors")
    public List<Subcontractor> getSubc(){
        return subcontractorService.getSubcontractors();
    }

    //EDIT FROM FAULT LIST
    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String editFault(Model model, @PathVariable long id){

        model.addAttribute("fault", faultService.getById(id));
        return "faults/edit";
    }



    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String saveEditFault(@Valid Fault fault, BindingResult result) {

        if (result.hasErrors()) {
            return "faults/edit";
        }
        Long idDoc = fault.getDocument().getId();
        faultService.add(fault);
        return "redirect:/app/faults/documents/" + idDoc + "/add";
    }
}
