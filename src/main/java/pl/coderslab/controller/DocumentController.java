package pl.coderslab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.model.Building;
import pl.coderslab.model.Document;
import pl.coderslab.model.Project;
import pl.coderslab.model.User;
import pl.coderslab.service.BuildingService;
import pl.coderslab.service.DocumentService;
import pl.coderslab.service.ProjectService;
import pl.coderslab.service.UserService;

import javax.persistence.EntityNotFoundException;
import javax.validation.Valid;
import java.time.Duration;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.List;

@Controller
@RequestMapping("/app/documents")
public class DocumentController {

    private final DocumentService documentService;
    private final BuildingService buildingService;
    private final UserService userService;

    public DocumentController(DocumentService documentService, BuildingService buildingService, UserService userService) {
        this.documentService = documentService;
        this.buildingService = buildingService;
        this.userService = userService;
    }

    @GetMapping("/all")
    public String showDocuments(Model model) {
        List<Document> documents = documentService.getDocuments();
       model.addAttribute("documents", documents);
        return "documents/all";
    }

    @ModelAttribute("docTypes")
    public List<String> getDocTypes(){
        return buildingService.getDocTypes();
    }

    @ModelAttribute("buildings")
    public List<Building> getBuildings(){return buildingService.getBuildings(); }

    @ModelAttribute("users")
    public List<User> getUsers(){return  userService.getUsers(); }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String showAddDocumentForm(Model model) {
        model.addAttribute("document", new Document());
        return "documents/add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String saveDocument(@Valid Document document, BindingResult result) {

        if (result.hasErrors()) {
            return "documents/add";
        }
        document.setCreated(LocalDateTime.now());
        document.setUpdated(LocalDateTime.now());
        document.setExpirationDate(LocalDateTime.now().plus(Duration.ofDays(7l)));
        documentService.add(document);
        return "redirect:/app/documents/all";
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public String showEditForm(@PathVariable long id, Model model) {
        model.addAttribute("document", documentService.get(id));
        model.addAttribute("buildings", buildingService.getBuildings());
        model.addAttribute("users", userService.getUsers());
        return "documents/edit";
    }

    @RequestMapping(value = "/edit", method = RequestMethod.POST)
    public String editDocument(@Valid Document document, BindingResult result) {
        if (result.hasErrors()) {
            return "documents/edit";
        }
        documentService.add(document);
        return "redirect:/app/documents/all";
    }


    @GetMapping("/delete/{id}")
    public String deleteDocument(Model model, @PathVariable long id) {
        documentService.delete(id);
        return "redirect:/app/documents/all";
    }

    @GetMapping("/details/{id}")
    public String showDocument(Model model, @PathVariable long id) {
        model.addAttribute("document", documentService.get(id).orElseThrow(EntityNotFoundException::new));
        return "documents/details";
    }
}
