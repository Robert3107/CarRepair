package pl.register.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import pl.register.entity.Customer;
import pl.register.entity.Parts;
import pl.register.repository.PartsRepository;

import javax.validation.Valid;
import java.util.List;

@Controller
@RequestMapping("/parts")
public class PartsController {

    private final PartsRepository partsRepository;

    public PartsController(PartsRepository partsRepository) {
        this.partsRepository = partsRepository;
    }

    @GetMapping("/add")
    public String addPart(Model m){
        m.addAttribute("part", new Parts());
        return "parts/addParts";
    }

    @PostMapping("/add")
    public String addPartPost(@ModelAttribute @Valid Parts parts, BindingResult violations){
        if (violations.hasErrors()){
            return "parts/addPartsError";
        }
        partsRepository.save(parts);

        return "redirect:all";
    }

    @GetMapping("/all")
    public String showAllParts(Model m){
        List<Parts> parts = partsRepository.findAll();
        m.addAttribute("parts", parts);

        return "parts/partsRegister";
    }

    @PostMapping("/all")
    public String showAllPartsPost(Model m){
        List<Parts> parts = partsRepository.findAll();
        m.addAttribute("parts", parts);

        return "parts/partsRegister";
    }

    @GetMapping("/edit/{id}")
    public String editParts(Model m, @PathVariable long id) {
        Parts editParts = partsRepository.findByPartsId(id);
        m.addAttribute("part", editParts);

        return "parts/editParts";
    }

    @PostMapping("/edit/{id}")
    public String editPartsPost(@Valid Parts parts, BindingResult violations) {
        if (violations.hasErrors()) {
            return "parts/editPartsError";
        }

        partsRepository.save(parts);
        return "redirect:../all";
    }

    @GetMapping("/delete/{id}")
    public String deleteParts(Model m, @PathVariable long id) {
        m.addAttribute("part", partsRepository.findByPartsId(id));

        return "parts/deleteParts";
    }

    @PostMapping("/delete/{id}")
    public String deletePartsPost(@ModelAttribute Parts parts) {
        partsRepository.delete(parts);

        return "redirect:../all";
    }
}
