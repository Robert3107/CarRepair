package pl.register.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/main")
public class ApplicationController {

    @GetMapping("/menu")
    public String mainMenu() {
        return "mainMenu";
    }

    @GetMapping("/credits")
    public String credits() {
        return "credits/credits";
    }
}
