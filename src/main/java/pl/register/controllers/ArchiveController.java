package pl.register.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import pl.register.entity.Archive;
import pl.register.repository.ArchiveRepository;

import java.util.List;

@Controller
@RequestMapping("/archive")
public class ArchiveController {

    private ArchiveRepository archiveRepository;

    public ArchiveController(ArchiveRepository archiveRepository) {
        this.archiveRepository = archiveRepository;
    }

    @GetMapping("/all")
    public String showAllArchive(Model m) {
        List<Archive> archives = archiveRepository.findAll();
        m.addAttribute("taskArchive", archives);
        return "archive/archive";
    }

    @PostMapping("/all")
    public String showAllArchivePost(Model m) {
        List<Archive> searchArchives = archiveRepository.findAll();
        m.addAttribute("taskArchive", searchArchives);

        return "archive/archive";
    }
}
