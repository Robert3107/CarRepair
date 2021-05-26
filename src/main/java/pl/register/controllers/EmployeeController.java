package pl.register.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import pl.register.entity.Employee;
import pl.register.repository.EmployeeRepository;
import pl.register.repository.TaskRepository;

@Controller
@RequestMapping("/user")
public class EmployeeController {

    private EmployeeRepository employeeRepository;
    private TaskRepository taskRepository;

    public EmployeeController(EmployeeRepository employeeRepository, TaskRepository taskRepository) {
        this.employeeRepository = employeeRepository;
        this.taskRepository = taskRepository;
    }

    @GetMapping("/add")
    public String addTask(Model m) {
        m.addAttribute("employee", new Employee());
        return "user/addEmployee";
    }

    @PostMapping("/add")
    public String addTaskPost(@ModelAttribute Employee employee) {
        employeeRepository.save(employee);
        return "mainMenu";
    }

    @GetMapping("/{id}/delete")
    public String deleteEmployee(@PathVariable long id, Model m) {
        m.addAttribute("employee", employeeRepository.findById(id));

        return "user/deleteEmployee";
    }

    @PostMapping("/{id}/delete")
    public String deleteEmployee(@ModelAttribute Employee employee) {
        employeeRepository.delete(employee);
        return "mainMenu";
    }

}
